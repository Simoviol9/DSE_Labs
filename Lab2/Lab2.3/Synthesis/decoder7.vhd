LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY decoder7 IS
	PORT (
		C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DISPLAY : OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END decoder7;

ARCHITECTURE Behaviour OF decoder7 IS
	SIGNAL NUM : INTEGER;
BEGIN
	NUM <= TO_INTEGER(UNSIGNED(C));
	DISPLAY <= "0000001" WHEN NUM = 0 ELSE
	           "1001111" WHEN NUM = 1 ELSE
	           "0010010" WHEN NUM = 2 ELSE
	           "0000110" WHEN NUM = 3 ELSE
	           "1001100" WHEN NUM = 4 ELSE
	           "0100100" WHEN NUM = 5 ELSE
	           "0100000" WHEN NUM = 6 ELSE
	           "0001111" WHEN NUM = 7 ELSE
	           "0000000" WHEN NUM = 8 ELSE
	           "0000100" WHEN NUM = 9 ELSE
	           "1111111"; -- Blank
END Behaviour;