---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "conv_signed13to8bit"
---------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY conv_signed13to8bit IS
	PORT (
		Y13s : IN STD_LOGIC_VECTOR(12 DOWNTO 0); -- 13 bit signed input
		Y8s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- 8 bit signed output
		clk : IN STD_LOGIC;
		clk_enable : IN STD_LOGIC
	);
END conv_signed13to8bit;

ARCHITECTURE behavioral OF conv_signed13to8bit IS
	SIGNAL Y11s : STD_LOGIC_VECTOR(10 DOWNTO 0);
	SIGNAL Y11i : INTEGER RANGE - 1024 TO 1023;
	SIGNAL Y8i : INTEGER RANGE - 128 TO 127;
BEGIN
	PROCESS (clk, clk_enable, Y13s)
	VARIABLE temp11 : SIGNED(10 DOWNTO 0);
	VARIABLE temp13 : SIGNED(12 DOWNTO 0);
	BEGIN
		IF (clk_enable = '1') THEN
 
			-- Step 1: From 13 to 11
			temp13 := SIGNED(Y13s);

			IF Y13s(1) = '1' THEN
				temp11 := SIGNED(temp13(12 DOWNTO 2)) + 1;
			ELSE
				temp11 := SIGNED(temp13(12 DOWNTO 2));
			END IF;

			Y11s <= STD_LOGIC_VECTOR(temp11);

 
			-- Step 2: From (11 bit signed) to (11 bit integer)
			Y11i <= to_integer(temp11);

			-- Step 3: Clipping (from 11 integer) bit to (8 integer bit)
			IF Y11i <- 128 THEN
				Y8i <= - 128;
			ELSIF Y11i > 127 THEN
				Y8i <= 127;
			ELSE
				Y8i <= Y11i;
			END IF;

			-- Step 4: From (8 bit integer) to (8 bit signed)
			Y8s <= STD_LOGIC_VECTOR(to_signed(Y8i, 8));
 
		END IF;
	END PROCESS;

END behavioral;