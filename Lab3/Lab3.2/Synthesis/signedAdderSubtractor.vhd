------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 2 - 4-bit ripple carry adder/subtractor
-- VHDL code of main entity
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signedAdderSubtractor is
	port (
		IN1, IN2       : in  SIGNED(3 downto 0);
		IN3, CLK, RESN : in  STD_LOGIC;
		OUT1           : out SIGNED(3 downto 0);
		OUT2           : out STD_LOGIC
	);
end signedAdderSubtractor;

architecture Behavior of signedAdderSubtractor is

	component regn is
		generic
			(N : INTEGER := 4);
		port (
			R             : in  SIGNED(N - 1 downto 0);
			Clock, Resetn : in  STD_LOGIC;
			Q             : out SIGNED(N - 1 downto 0)
		);
	end component;
	component flipflop is
		port (
			D, Clock, Resetn : in  STD_LOGIC;
			Q                : out STD_LOGIC);
	end component;
	component rippleCarryAdderSubtractor
		port (
			A1, A2 : in  SIGNED(3 downto 0);
			P    : in  STD_LOGIC;
			B1     : out SIGNED(3 downto 0);
			COUT    : out STD_LOGIC
		);
	end component;

	component ovfdetector
		port (
		A, B, S, MODE, COUT: in STD_LOGIC;
		OVF: out STD_LOGIC);
	end component;
	signal A, B, S : SIGNED(3 downto 0);
	signal COUT,OVF     : STD_LOGIC;
begin
	REG0 : regn
	port map(IN1, CLK, RESN, A);
	REG1 : regn
	port map(IN2, CLK, RESN, B);
	REG2 : regn
	port map(S, CLK, RESN, OUT1);
	RCA0 : rippleCarryAdderSubtractor
	port map(A, B, IN3, S, COUT);
	DFF0 : flipflop
	port map(OVF, CLK, RESN, OUT2);
	OVFD : ovfdetector
	port map(A(3),B(3),S(3),IN3,COUT,OVF);
end Behavior;