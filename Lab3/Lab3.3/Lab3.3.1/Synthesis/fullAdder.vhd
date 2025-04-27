------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 3 - 4-bit ripple carry adder
-- VHDL code of full adder
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fullAdder is
	port (
		A, B, CI: in  STD_LOGIC;
		S, Cout: out STD_LOGIC
	);
end fullAdder;

architecture stuctural of fullAdder is

	component mux is
		port (
			IN0, IN1, SEL : in  STD_LOGIC;
			OUT1   : out STD_LOGIC);
	end component;

	signal IN0, IN1, SEL, OUT1 : STD_LOGIC;
begin
	MUX0 : mux
	port map(B, CI, SEL, Cout);
	
	SEL <= A XOR B;
	S <= CI XOR SEL;
	
end stuctural;
