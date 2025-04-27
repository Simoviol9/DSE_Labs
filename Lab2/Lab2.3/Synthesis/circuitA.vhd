LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY circuitA IS
	PORT (
		INPUT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		OUTPUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END circuitA;

ARCHITECTURE Behavior OF circuitA IS
BEGIN
	OUTPUT <= "000" WHEN INPUT = "010" ELSE
	          "001" WHEN INPUT = "011" ELSE
	          "010" WHEN INPUT = "100" ELSE
	          "011" WHEN INPUT = "101" ELSE
	          "100" WHEN INPUT = "110" ELSE
	          "101" WHEN INPUT = "111";
END Behavior;