------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 2 - 4-bit ripple carry adder/subtractor
-- VHDL code of full adder
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fullAdder is
	port (
		A, B, P, CIN: in  STD_LOGIC;
		S, Cout: out STD_LOGIC
	);
end fullAdder;

architecture stuctural of fullAdder is

	component mux is
		port (
			IN0, IN1, SEL : in  STD_LOGIC;
			OUT1   : out STD_LOGIC);
	end component;

	signal B2, SEL : STD_LOGIC;
begin
	B2 <= B xor P;
	MUX0 : mux
	port map(B2, CIN, SEL, Cout);
	SEL <= A XOR B2;
	S <= CIN XOR SEL;
	
end stuctural;
