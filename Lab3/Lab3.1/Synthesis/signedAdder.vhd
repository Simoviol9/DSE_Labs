------------------------------------
-- Group 8 - Laboratory 3
-- Exercise 3 - 4-bit ripple carry adder
-- VHDL code of main entity
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signedAdder is
	port (
		IN1, IN2       : in  SIGNED(3 downto 0);
		IN3, CLK, RESN : in  STD_LOGIC;
		OUT1           : out SIGNED(3 downto 0);
		OUT2           : out STD_LOGIC
	);
end signedAdder;

architecture Behavior of signedAdder is

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
	component rippleCarryAdder
		port (
			A1, A2 : in  SIGNED(3 downto 0);
			CIN    : in  STD_LOGIC;
			B1     : out SIGNED(3 downto 0);
			OVF    : out STD_LOGIC
		);
	end component;

	component ovfdetector
	port (
		A, B, S: in STD_LOGIC;
		OVF: out STD_LOGIC);
	end component;
	
	signal A, B, S : SIGNED(3 downto 0);
	signal OVF, C_OUT     : STD_LOGIC;
begin
	REG0 : regn
	port map(IN1, CLK, RESN, A);
	REG1 : regn
	port map(IN2, CLK, RESN, B);
	REG2 : regn
	port map(S, CLK, RESN, OUT1);
	RCA0 : rippleCarryAdder
	port map(A, B, IN3, S, C_OUT);
	DFF0 : flipflop
	port map(OVF, CLK, RESN, OUT2);
	OVFD : ovfdetector
	port map(A(3), B(3), S(3), OVF);
end Behavior;