-- File Part3.vhd
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Part3 IS
	PORT (
		SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		HEX0, HEX1: OUT STD_LOGIC_VECTOR(0 TO 6)
	);
END Part3;

ARCHITECTURE Behavior OF Part3 IS
	COMPONENT mux IS
		PORT (
			A1,A2: IN STD_LOGIC;
			sel : IN STD_LOGIC;
			output : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT comparator IS
		PORT (
			input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			output : OUT STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT decoder7 IS
		PORT (
			C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Display : OUT STD_LOGIC_VECTOR(0 TO 6)
		);
	END COMPONENT;
	
	COMPONENT circuitA IS
		PORT (
			input : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT circuitB IS
		PORT (
			input : IN STD_LOGIC;
			Display : OUT STD_LOGIC_VECTOR(0 TO 6)
		);
	END COMPONENT;
	
	SIGNAL z, m0, m1, m2 , m3, a1, a2, a3 : STD_LOGIC;
	CONSTANT a4: STD_LOGIC := '0';
BEGIN
	MUX0 : mux
	PORT MAP(SW(0) ,a1, z, m0);
	MUX1 : mux
	PORT MAP(SW(1), a2, z, m1);
	MUX2 : mux
	PORT MAP(SW(2), a3, z, m2);
	MUX3 : mux
	PORT MAP(SW(3), a4, z, m3);
	COMP : comparator
	PORT MAP(SW(3 DOWNTO 0), z);
	DEC1 : decoder7
	PORT MAP(C(3) => m3, C(2) => m2, C(1) => m1, C(0) => m0, DISPLAY => HEX0);
	DEC2 : circuitB
	PORT MAP(z, HEX1);
	DRIV: circuitA
	PORT MAP(SW(2 DOWNTO 0),OUTPUT(2) => a3, OUTPUT(1) => a2, OUTPUT(0) => a1);
END Behavior;