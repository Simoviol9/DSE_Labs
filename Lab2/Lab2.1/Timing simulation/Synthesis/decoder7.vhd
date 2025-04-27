LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- 7 segment display decoder
-- 000 -> H
-- 001 -> E
-- 010 -> L
-- 011 -> O
-- else -> ' ' (blank)

ENTITY decoder7 IS
	PORT (
		SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0); -- Input: switches #0 to #2
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6) -- Output: 7 segment display #0
	);
END decoder7;

ARCHITECTURE Behavior OF decoder7 IS
BEGIN
	-- HEX0 code depends on the SW code
	HEX0 <= "1001000" WHEN SW = "000" ELSE
	        "0110000" WHEN SW = "001" ELSE
	        "1110001" WHEN SW = "010" ELSE
	        "0000001" WHEN SW = "011" ELSE
	        "1111111";

END Behavior;