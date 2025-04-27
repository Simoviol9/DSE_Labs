------------------------------------
-- Group 8 - Laboratory 6
-- Simple digital filter
-- VHDL code of datapath
--
-- PARAMETRIC
------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
	port (
		CNT0_ENABLE, SHIFTREG_EN  : in  STD_LOGIC;	-- Shiftreg_en (active low)
		END_CNT: out STD_LOGIC;
		DATA_IN: in signed(7 downto 0);
		DATA_OUT: out signed(7 downto 0);
		CLK, RES: in  STD_LOGIC;
		ADDA_SEL, ADDB_SEL: in STD_LOGIC;
		MEMA_ADD, MEMB_ADD: out STD_LOGIC_VECTOR(9 downto 0)
	);
end datapath;

architecture structure of datapath is
	component moduloCounter
		generic
	(
		N_bits : INTEGER; -- Define number of bits of the counter
		MODULO : INTEGER
	);
	port (
		EN, CLK, CLR : in  STD_LOGIC;                              -- Input signals: Enable, Clock and Clear (CLR is active-low)
		COUNT        : out STD_LOGIC_VECTOR((N_bits - 1) downto 0); -- Output signal
		MOD_REACHED  : out STD_LOGIC
	);
	end component;
	
	component DP1
		port (
		IN1      : in  STD_LOGIC_VECTOR(7 downto 0);
		CLK, RES : in  STD_LOGIC;
		OUT1     : out STD_LOGIC_VECTOR(12 downto 0)
	);
	end component;

	component conv_signed13to8bit_struct IS
	Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        inputA     : in  STD_LOGIC_VECTOR(12 downto 0);
        outputREG  : out STD_LOGIC_VECTOR(7 downto 0)
    );
	END component;

	component mux10bit is
	port (
		IN0, IN1: in STD_LOGIC_VECTOR(9 downto 0);
		SEL : in  STD_LOGIC;
		OUT1          : out STD_LOGIC_VECTOR(9 downto 0));
	end component;

component delay is
	generic
		(
			N_bit : INTEGER
		);
	port (
		R                      : in  STD_LOGIC_VECTOR((N_bit - 1) downto 0); -- Shift register input
		CLK, RES, LD           : in  STD_LOGIC;                          -- Clock, Reset, and Load signals
		OUT1: out STD_LOGIC_VECTOR((N_bit - 1) downto 0)  -- Register output

	);
end component;

component comparator is
		generic
		(
			N_bits : INTEGER; -- Define number of bits of the counter
			INT    : INTEGER
		);
		port (
			IN1  : in  STD_LOGIC_VECTOR((N_bits - 1) downto 0); -- Input signal
			OUT1 : out STD_LOGIC                                -- Output signal
		);
	end component;
	signal STD_DATA_IN, STD_DATA_OUT: std_logic_vector(7 downto 0);

	signal CNT0_OUT, CNT0_DELAYED: STD_LOGIC_VECTOR(9 downto 0);
	signal INTERMEDIATE_DATA: std_logic_vector(12 downto 0);
	signal MEMB_INTERMEDIATE: STD_LOGIC_VECTOR(9 downto 0);
		
begin
	CNT0: moduloCounter	-- Main modulo counter
	generic map(
		N_bits =>10,
		MODULO =>10	-- 1023 in Final version
	)
	port map(
		EN=> CNT0_ENABLE,
		CLK => CLK,
		CLR => RES,
		COUNT => CNT0_OUT
	);
	
	DEL: delay
	generic map(
		N_bit => 10
	)
	port map(
		R   => CNT0_OUT,
		CLK => CLK,
		RES => SHIFTREG_EN,
		LD  => '1',
		OUT1  => CNT0_DELAYED
	);

	STD_DATA_IN <= std_logic_vector(DATA_IN);
	U1: DP1
	port map(
		IN1 => STD_DATA_IN,
		CLK=>CLK,
		RES =>SHIFTREG_EN,	-- Shift register enable (active-low)
		OUT1=>INTERMEDIATE_DATA
	);

	DATA_OUT <= signed(STD_DATA_OUT);

	U2: conv_signed13to8bit_struct
	port map(
		clk =>CLK,
		reset=> '1',
		inputA => INTERMEDIATE_DATA,
		outputREG => STD_DATA_OUT
	);

	MUX0: mux10bit
	port map(
		IN0=>CNT0_OUT,
		IN1=>CNT0_DELAYED,
		SEL=>ADDA_SEL,
		OUT1 => MEMA_ADD
	);

MUX1: mux10bit
	port map(
		IN0=> CNT0_OUT,
		IN1=> CNT0_DELAYED,
		SEL=>ADDB_SEL,
		OUT1 =>MEMB_INTERMEDIATE
	);

MEMB_ADD <= MEMB_INTERMEDIATE;

CMP: comparator
generic map
	(
		N_bits => 10,
		INT => 9 -- 1023 in real circuit
	)
	port map(
		IN1=> MEMB_INTERMEDIATE,
		OUT1=>END_CNT
	);
	
end structure;
