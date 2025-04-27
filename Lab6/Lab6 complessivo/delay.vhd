------------------------------------
-- Group 8 - Laboratory 6
-- Simple digital filter
-- VHDL code of data delay
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity delay is
	generic
		(
			N_bit : INTEGER
		);
	port (
		R                      : in  STD_LOGIC_VECTOR((N_bit - 1) downto 0); -- Shift register input
		CLK, RES, LD           : in  STD_LOGIC;                          -- Clock, Reset, and Load signals
		OUT1: out STD_LOGIC_VECTOR((N_bit - 1) downto 0)  -- Register output

	);
end delay;

architecture structure of delay is

	component regn is
		generic
		(
			N_bit : INTEGER
		);
		port (
			R            : in  STD_LOGIC_VECTOR((N_bit - 1) downto 0); -- Register input
			CLK, RES, LD : in  STD_LOGIC;                            -- Clock, Reset, and Load signals
			Q            : out STD_LOGIC_VECTOR((N_bit - 1) downto 0)  -- Shift register output
		);
	end component;

	-- Signal for intermediate values between registers
	type intermediateValue is array(0 to 5) of STD_LOGIC_VECTOR((N_bit - 1) downto 0);
	signal int_value : intermediateValue;

begin

	regn_generate : for i in 0 to 4 generate
		REG : regn
		generic
		map (
		N_bit => N_bit
		)
		port map(
			R   => int_value(i),
			CLK => CLK,
			RES => RES,
			LD  => LD,
			Q   => int_value(i + 1)
		);
	end generate regn_generate;

	int_value(0) <= R;
	OUT1 <= int_value(5);
end structure;
