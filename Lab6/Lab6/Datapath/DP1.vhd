library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DP1 is
	port (
		IN1      : in  STD_LOGIC_VECTOR(7 downto 0);
		CLK, RES : in  STD_LOGIC;
		OUT1     : out STD_LOGIC_VECTOR(12 downto 0)
	);
end DP1;

architecture structural of DP1 is

	component shiftRegn is
		generic (
			N_bit : INTEGER -- Bit-width of each register
		);
		port (
			R              : in  STD_LOGIC_VECTOR((N_bit - 1) downto 0); -- Shift register input
			CLK, RES, LD   : in  STD_LOGIC;                              -- Clock, Reset, and Load signals
			Q0, Q1, Q2, Q3 : out STD_LOGIC_VECTOR((N_bit - 1) downto 0)  -- Register output

		);
	end component;

	component multiplier_025 is
		port (
			IN1 : in  STD_LOGIC_VECTOR(7 downto 0); -- Shift register input
			Q1  : out STD_LOGIC_VECTOR(12 downto 0) -- Register output
		);
	end component;

	component multiplier_05 is
		port (
			IN1 : in  STD_LOGIC_VECTOR(7 downto 0); -- Shift register input
			Q1  : out STD_LOGIC_VECTOR(12 downto 0) -- Register output
		);
	end component;

	component multiplier_2 is
		port (
			IN1 : in  STD_LOGIC_VECTOR(7 downto 0); -- Shift register input
			Q1  : out STD_LOGIC_VECTOR(12 downto 0) -- Register output
		);
	end component;

	component multiplier_4 is
		port (
			IN1 : in  STD_LOGIC_VECTOR(7 downto 0); -- Shift register input
			Q1  : out STD_LOGIC_VECTOR(12 downto 0) -- Register output
		);
	end component;

	component regn is
		generic (N_bit : INTEGER);
		port (
			R            : in  STD_LOGIC_VECTOR((N_bit - 1) downto 0);  -- Register input
			CLK, RES, LD : in  STD_LOGIC;                     -- Clock and reset signals
			Q            : out STD_LOGIC_VECTOR((N_bit - 1) downto 0)); -- Register output
	end component;

	component RCA_13bit is
		port (
			A1, A2 : in  STD_LOGIC_VECTOR(12 downto 0); -- Numbers to be added
			P      : in  STD_LOGIC;           -- RCA mode
			B1     : out STD_LOGIC_VECTOR(12 downto 0); -- Sum result
			COUT   : out STD_LOGIC            -- Output carry
		);
	end component;

	signal REG_IN                                         : STD_LOGIC_VECTOR(7 downto 0);

	signal DATA0, DATA1, DATA2, DATA3                     : STD_LOGIC_VECTOR(7 downto 0);
	signal DATA0_MUL, DATA1_MUL, DATA2_MUL, DATA3_MUL     : STD_LOGIC_VECTOR(12 downto 0);
	signal OPD0, OPD1, OPD2, OPD3                         : STD_LOGIC_VECTOR(12 downto 0);
	signal INT_RES0, INT_RES1, INT_RES0_REG, INT_RES1_REG : STD_LOGIC_VECTOR(12 downto 0);
	signal OUT_REG                                        : STD_LOGIC_VECTOR(12 downto 0);
begin
	REG_IN <= IN1; --???

	REG0 : shiftRegn
	generic map(
		N_bit => 8
	)
	port map(
		R   => IN1,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q0  => DATA0,
		Q1  => DATA1,
		Q2  => DATA2,
		Q3  => DATA3
	);

	MUL_05 : multiplier_05
	port map(
		IN1 => DATA0,
		Q1  => DATA0_MUL
	);

	MUL_2 : multiplier_2
	port map(
		IN1 => DATA1,
		Q1  => DATA1_MUL
	);

	MUL_4 : multiplier_4
	port map(
		IN1 => DATA2,
		Q1  => DATA2_MUL
	);

	MUL_025 : multiplier_025
	port map(
		IN1 => DATA3,
		Q1  => DATA3_MUL
	);

	REG1_0 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => DATA0_MUL,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => OPD0
	);

	REG1_1 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => DATA1_MUL,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => OPD1
	);

	REG1_2 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => DATA2_MUL,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => OPD2
	);

	REG1_3 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => DATA3_MUL,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => OPD3
	);

	ADD0 : RCA_13bit
	port map(
		A1 => OPD0,
		A2 => OPD1,
		P  => '0',
		B1 => INT_RES0
		-- COUT =>
	);

	ADD1 : RCA_13bit
	port map(
		A1 => OPD2,
		A2 => OPD3,
		P  => '0',
		B1 => INT_RES1
		-- COUT =>
	);

	REG2_0 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => INT_RES0,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => INT_RES0_REG
	);

	REG2_1 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => INT_RES1,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => INT_RES1_REG
	);

	ADD2 : RCA_13bit
	port map(
		A1 => INT_RES1_REG, -- First operand
		A2 => INT_RES0_REG, -- Second operand	
		P  => '1',          -- Subtraction
		B1 => OUT_REG
		-- COUT =>
	);

	REG3_0 : regn
	generic map(
		N_bit => 13
	)
	port map(
		R   => OUT_REG,
		CLK => CLK,
		RES => RES,
		LD  => '1',
		Q   => OUT1
	);

end structural;