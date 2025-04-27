LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- 7 segment display decoder
-- 000 -> H
-- 001 -> E
-- 010 -> L
-- 011 -> O
-- 100 -> C
-- 101 -> F
-- 110 -> P
-- 111 -> ' ' (blank)

ENTITY decoder7 IS
	PORT (
		C       : IN STD_LOGIC_VECTOR(2 DOWNTO 0); -- Input selector
		DISPLAY : OUT STD_LOGIC_VECTOR(0 TO 6) -- Output to display
	);
END decoder7;

ARCHITECTURE Behavior OF decoder7 IS
BEGIN
	-- DISPLAY code depends on the C code
	DISPLAY <= "0110111" WHEN C = "000" ELSE -- Letter H
	           "1001111" WHEN C = "001" ELSE -- Letter E
	           "0001110" WHEN C = "010" ELSE -- Letter L
	           "1111110" WHEN C = "011" ELSE -- Letter O
	           "1001110" WHEN C = "100" ELSE -- Letter C
	           "1000111" WHEN C = "101" ELSE -- Letter F
	           "1100111" WHEN C = "110" ELSE -- Letter P
	           "0000000";			 -- Blank

END Behavior;