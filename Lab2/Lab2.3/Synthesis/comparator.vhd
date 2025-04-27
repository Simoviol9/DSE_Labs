LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY comparator IS
	PORT (
		INPUT : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		OUTPUT : OUT STD_LOGIC
	);
END comparator;

ARCHITECTURE Behavior OF comparator IS
	SIGNAL NUM : INTEGER;
BEGIN
NUM <= to_integer(unsigned(INPUT));
	PROCESS (NUM)
	BEGIN
		IF NUM > 9 THEN
			OUTPUT <= '1';
		ELSE
			OUTPUT <= '0';
		END IF;
	END PROCESS;
END Behavior;