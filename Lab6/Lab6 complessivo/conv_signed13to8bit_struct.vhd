---------------------------------
--		Group n. 08 - Laboratory n. 06
--		Title: A simple digital filter
--		VHDL model of "conv_signed13to8bit_struct"
---------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity conv_signed13to8bit_struct is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        inputA     : in  STD_LOGIC_VECTOR(12 downto 0);
        outputREG  : out STD_LOGIC_VECTOR(7 downto 0)
    );
end conv_signed13to8bit_struct;

architecture Structural of conv_signed13to8bit_struct is

    -- Component declarations
    component RCA_11bit
        port (
		A1, A2 : in  STD_LOGIC_VECTOR(10 downto 0); -- Numbers to be added
		P      : in  STD_LOGIC;           -- RCA mode
		B1     : out STD_LOGIC_VECTOR(10 downto 0); -- Sum result
		COUT   : out STD_LOGIC            -- Output carry
	);
    end component;

    component MUX2x1_11bit
        Port (
        sel : in  STD_LOGIC;
        in0, in1 : in  STD_LOGIC_VECTOR(10 downto 0);
        out_mux  : out STD_LOGIC_VECTOR(10 downto 0)
    );
    end component;

    component IntervalDetector
        Port (
            data_in : in  STD_LOGIC_VECTOR(10 downto 0);
            Z       : out STD_LOGIC_VECTOR(1 downto 0)
        );
    end component;

    component MUX3x1_8bit
        Port (
            sel      : in  STD_LOGIC_VECTOR(1 downto 0);
            in0      : in  STD_LOGIC_VECTOR(7 downto 0);
            in1      : in  STD_LOGIC_VECTOR(7 downto 0);
            in2      : in  STD_LOGIC_VECTOR(7 downto 0);
            out_mux  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

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

    -- Internal signals
    signal resized_A : STD_LOGIC_VECTOR(10 downto 0);
    signal sum       : STD_LOGIC_VECTOR(10 downto 0);
    signal mux1_out  : STD_LOGIC_VECTOR(10 downto 0);
    signal z         : STD_LOGIC_VECTOR(1 downto 0);
    signal mux2_out  : STD_LOGIC_VECTOR(7 downto 0);

begin

    -- Resize inputA(12 downto 2) to 11 bits (unsigned to std_logic_vector)
    resized_A <= inputA(12 downto 2);

    -- Component Instantiations
    U1: RCA_11bit
        port map (
            A1   => resized_A,
            A2   => "00000000001",	-- EDITED
	P => '0',
	B1 => sum
        );


    U2: MUX2x1_11bit
        port map (
            sel     => inputA(1),	-- EDITED
            in0     => resized_A,	-- EDITED
            in1     => sum,
            out_mux => mux1_out
        );

    U3: IntervalDetector
        port map (
            data_in => mux1_out,
            Z       => z
        );

    U4: MUX3x1_8bit
        port map (
            sel     => z,
            in0     => "01111111", 	-- Max value	-- EDITED
            in1     => "10000000",	-- Min value	-- EDITED
            in2     => mux1_out(7 downto 0),	-- Result
            out_mux => mux2_out
        );

    U5 : regn
		generic
		map (
		N_bit => 8
		)
		port map(
			R   => mux2_out,
			CLK => clk,
			RES => reset,
			LD  => '1',
			Q   => outputREG
		);

end Structural;
