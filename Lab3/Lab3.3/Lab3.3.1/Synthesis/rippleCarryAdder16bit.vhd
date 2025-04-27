------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 3 - 4-bit ripple carry adder
-- VHDL code of ripple carry adder
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rippleCarryAdder16bit is
	port (
		A1, A2 : in  SIGNED(15 downto 0);
		CIN    : in  STD_LOGIC;
		B1     : out SIGNED(15 downto 0);
		COUT   : out STD_LOGIC
	);
end rippleCarryAdder16bit;

architecture Behavior of rippleCarryAdder16bit is

	component fullAdder is
		port (
			A, B, CI : in  STD_LOGIC;
			S, Cout  : out STD_LOGIC);
	end component;

	signal C : STD_LOGIC_VECTOR((15 + 1) downto 0); -- 15 intermediate carry plus the carry_out
begin
	C(0) <= CIN;
	COUT <= C(16);

	-- Generate multiple instances of the component
	gen_block : for i in 0 to 15 generate
		FA : fullAdder
		port map(
			A    => A1(i),
			B    => A2(i),
			CI   => C(i),
			S    => B1(i),
			Cout => C(i + 1)
		);
	end generate gen_block;

end Behavior;
