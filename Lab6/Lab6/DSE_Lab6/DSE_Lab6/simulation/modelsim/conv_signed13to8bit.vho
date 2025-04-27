-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/16/2025 22:21:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	conv_signed13to8bit IS
    PORT (
	Y13s : IN std_logic_vector(12 DOWNTO 0);
	Y8s : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	clk_enable : IN std_logic
	);
END conv_signed13to8bit;

-- Design Ports Information
-- Y13s[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[3]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[5]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8s[7]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_enable	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[12]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[9]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[10]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[11]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[5]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[7]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13s[8]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF conv_signed13to8bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y13s : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_Y8s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_enable : std_logic;
SIGNAL \Y13s[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_enable~input_o\ : std_logic;
SIGNAL \Y13s[12]~input_o\ : std_logic;
SIGNAL \Y13s[11]~input_o\ : std_logic;
SIGNAL \Y13s[10]~input_o\ : std_logic;
SIGNAL \Y13s[9]~input_o\ : std_logic;
SIGNAL \Y13s[8]~input_o\ : std_logic;
SIGNAL \Y13s[7]~input_o\ : std_logic;
SIGNAL \Y13s[6]~input_o\ : std_logic;
SIGNAL \Y13s[5]~input_o\ : std_logic;
SIGNAL \Y13s[4]~input_o\ : std_logic;
SIGNAL \Y13s[3]~input_o\ : std_logic;
SIGNAL \Y13s[2]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Y13s[1]~input_o\ : std_logic;
SIGNAL \temp11~1_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \temp11~0_combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \temp11~2_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \temp11~4_combout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \temp11~3_combout\ : std_logic;
SIGNAL \Y8i~0_combout\ : std_logic;
SIGNAL \Y8s[0]$latch~combout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \temp11~5_combout\ : std_logic;
SIGNAL \Y8i~1_combout\ : std_logic;
SIGNAL \Y8s[1]$latch~combout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \temp11~6_combout\ : std_logic;
SIGNAL \Y8i~2_combout\ : std_logic;
SIGNAL \Y8s[2]$latch~combout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \temp11~7_combout\ : std_logic;
SIGNAL \Y8i~3_combout\ : std_logic;
SIGNAL \Y8s[3]$latch~combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \temp11~8_combout\ : std_logic;
SIGNAL \Y8i~4_combout\ : std_logic;
SIGNAL \Y8s[4]$latch~combout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \temp11~9_combout\ : std_logic;
SIGNAL \Y8i~5_combout\ : std_logic;
SIGNAL \Y8s[5]$latch~combout\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \temp11~10_combout\ : std_logic;
SIGNAL \Y8i~6_combout\ : std_logic;
SIGNAL \Y8s[6]$latch~combout\ : std_logic;
SIGNAL \Y8s[7]$latch~combout\ : std_logic;
SIGNAL Y8i : std_logic_vector(7 DOWNTO 0);
SIGNAL Y11i : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Y13s[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Y13s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk_enable~input_o\ : std_logic;
SIGNAL ALT_INV_Y11i : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_Y8i : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Y8s[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Y8s[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_temp11~10_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~9_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~8_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~7_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~6_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~5_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~4_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y8i~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_Y13s <= Y13s;
Y8s <= ww_Y8s;
ww_clk <= clk;
ww_clk_enable <= clk_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Y13s[8]~input_o\ <= NOT \Y13s[8]~input_o\;
\ALT_INV_Y13s[7]~input_o\ <= NOT \Y13s[7]~input_o\;
\ALT_INV_Y13s[6]~input_o\ <= NOT \Y13s[6]~input_o\;
\ALT_INV_Y13s[5]~input_o\ <= NOT \Y13s[5]~input_o\;
\ALT_INV_Y13s[4]~input_o\ <= NOT \Y13s[4]~input_o\;
\ALT_INV_Y13s[3]~input_o\ <= NOT \Y13s[3]~input_o\;
\ALT_INV_Y13s[11]~input_o\ <= NOT \Y13s[11]~input_o\;
\ALT_INV_Y13s[10]~input_o\ <= NOT \Y13s[10]~input_o\;
\ALT_INV_Y13s[9]~input_o\ <= NOT \Y13s[9]~input_o\;
\ALT_INV_Y13s[12]~input_o\ <= NOT \Y13s[12]~input_o\;
\ALT_INV_Y13s[2]~input_o\ <= NOT \Y13s[2]~input_o\;
\ALT_INV_Y13s[1]~input_o\ <= NOT \Y13s[1]~input_o\;
\ALT_INV_clk_enable~input_o\ <= NOT \clk_enable~input_o\;
ALT_INV_Y11i(6) <= NOT Y11i(6);
ALT_INV_Y11i(5) <= NOT Y11i(5);
ALT_INV_Y11i(4) <= NOT Y11i(4);
ALT_INV_Y11i(3) <= NOT Y11i(3);
ALT_INV_Y11i(2) <= NOT Y11i(2);
ALT_INV_Y11i(1) <= NOT Y11i(1);
ALT_INV_Y11i(9) <= NOT Y11i(9);
ALT_INV_Y11i(8) <= NOT Y11i(8);
ALT_INV_Y11i(7) <= NOT Y11i(7);
ALT_INV_Y11i(10) <= NOT Y11i(10);
ALT_INV_Y11i(0) <= NOT Y11i(0);
ALT_INV_Y8i(7) <= NOT Y8i(7);
ALT_INV_Y8i(6) <= NOT Y8i(6);
ALT_INV_Y8i(5) <= NOT Y8i(5);
ALT_INV_Y8i(4) <= NOT Y8i(4);
ALT_INV_Y8i(3) <= NOT Y8i(3);
ALT_INV_Y8i(2) <= NOT Y8i(2);
ALT_INV_Y8i(1) <= NOT Y8i(1);
ALT_INV_Y8i(0) <= NOT Y8i(0);
\ALT_INV_Y8s[7]$latch~combout\ <= NOT \Y8s[7]$latch~combout\;
\ALT_INV_Y8s[6]$latch~combout\ <= NOT \Y8s[6]$latch~combout\;
\ALT_INV_Y8s[5]$latch~combout\ <= NOT \Y8s[5]$latch~combout\;
\ALT_INV_Y8s[4]$latch~combout\ <= NOT \Y8s[4]$latch~combout\;
\ALT_INV_Y8s[3]$latch~combout\ <= NOT \Y8s[3]$latch~combout\;
\ALT_INV_Y8s[2]$latch~combout\ <= NOT \Y8s[2]$latch~combout\;
\ALT_INV_Y8s[1]$latch~combout\ <= NOT \Y8s[1]$latch~combout\;
\ALT_INV_Y8s[0]$latch~combout\ <= NOT \Y8s[0]$latch~combout\;
\ALT_INV_temp11~10_combout\ <= NOT \temp11~10_combout\;
\ALT_INV_temp11~9_combout\ <= NOT \temp11~9_combout\;
\ALT_INV_temp11~8_combout\ <= NOT \temp11~8_combout\;
\ALT_INV_temp11~7_combout\ <= NOT \temp11~7_combout\;
\ALT_INV_temp11~6_combout\ <= NOT \temp11~6_combout\;
\ALT_INV_temp11~5_combout\ <= NOT \temp11~5_combout\;
\ALT_INV_temp11~4_combout\ <= NOT \temp11~4_combout\;
\ALT_INV_temp11~3_combout\ <= NOT \temp11~3_combout\;
\ALT_INV_temp11~2_combout\ <= NOT \temp11~2_combout\;
\ALT_INV_temp11~1_combout\ <= NOT \temp11~1_combout\;
\ALT_INV_temp11~0_combout\ <= NOT \temp11~0_combout\;
\ALT_INV_Y8i~6_combout\ <= NOT \Y8i~6_combout\;
\ALT_INV_Y8i~5_combout\ <= NOT \Y8i~5_combout\;
\ALT_INV_Y8i~4_combout\ <= NOT \Y8i~4_combout\;
\ALT_INV_Y8i~3_combout\ <= NOT \Y8i~3_combout\;
\ALT_INV_Y8i~2_combout\ <= NOT \Y8i~2_combout\;
\ALT_INV_Y8i~1_combout\ <= NOT \Y8i~1_combout\;
\ALT_INV_Y8i~0_combout\ <= NOT \Y8i~0_combout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

-- Location: IOOBUF_X89_Y23_N5
\Y8s[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(0));

-- Location: IOOBUF_X89_Y23_N39
\Y8s[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(1));

-- Location: IOOBUF_X89_Y25_N22
\Y8s[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(2));

-- Location: IOOBUF_X89_Y21_N39
\Y8s[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(3));

-- Location: IOOBUF_X89_Y21_N5
\Y8s[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(4));

-- Location: IOOBUF_X89_Y25_N5
\Y8s[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(5));

-- Location: IOOBUF_X89_Y25_N56
\Y8s[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(6));

-- Location: IOOBUF_X89_Y21_N56
\Y8s[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Y8s[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_Y8s(7));

-- Location: IOIBUF_X89_Y21_N21
\clk_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_enable,
	o => \clk_enable~input_o\);

-- Location: IOIBUF_X89_Y13_N55
\Y13s[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(12),
	o => \Y13s[12]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\Y13s[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(11),
	o => \Y13s[11]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\Y13s[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(10),
	o => \Y13s[10]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\Y13s[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(9),
	o => \Y13s[9]~input_o\);

-- Location: IOIBUF_X89_Y15_N21
\Y13s[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(8),
	o => \Y13s[8]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\Y13s[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(7),
	o => \Y13s[7]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\Y13s[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(6),
	o => \Y13s[6]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\Y13s[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(5),
	o => \Y13s[5]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\Y13s[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(4),
	o => \Y13s[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\Y13s[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(3),
	o => \Y13s[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\Y13s[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(2),
	o => \Y13s[2]~input_o\);

-- Location: LABCELL_X88_Y20_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \Y13s[2]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \Y13s[2]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y13s[2]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X88_Y20_N3
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Y13s[3]~input_o\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~22\ = CARRY(( \Y13s[3]~input_o\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[3]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X88_Y20_N6
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \Y13s[4]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \Y13s[4]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y13s[4]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X88_Y20_N9
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \Y13s[5]~input_o\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \Y13s[5]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[5]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X88_Y20_N12
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \Y13s[6]~input_o\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \Y13s[6]~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y13s[6]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X88_Y20_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \Y13s[7]~input_o\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \Y13s[7]~input_o\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[7]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X88_Y20_N18
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \Y13s[8]~input_o\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \Y13s[8]~input_o\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y13s[8]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X88_Y20_N21
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Y13s[9]~input_o\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~10\ = CARRY(( \Y13s[9]~input_o\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[9]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X88_Y20_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Y13s[10]~input_o\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \Y13s[10]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y13s[10]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X88_Y20_N27
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \Y13s[11]~input_o\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \Y13s[11]~input_o\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y13s[11]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X88_Y20_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \Y13s[12]~input_o\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y13s[12]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~5_sumout\);

-- Location: IOIBUF_X89_Y23_N21
\Y13s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(1),
	o => \Y13s[1]~input_o\);

-- Location: MLABCELL_X87_Y21_N36
\temp11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~1_combout\ = ( \Y13s[12]~input_o\ & ( (!\Y13s[1]~input_o\) # (\Add0~5_sumout\) ) ) # ( !\Y13s[12]~input_o\ & ( (\Add0~5_sumout\ & \Y13s[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Y13s[1]~input_o\,
	dataf => \ALT_INV_Y13s[12]~input_o\,
	combout => \temp11~1_combout\);

-- Location: LABCELL_X88_Y21_N30
\Y11i[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(10) = ( Y11i(10) & ( (!\clk_enable~input_o\) # (\temp11~1_combout\) ) ) # ( !Y11i(10) & ( (\temp11~1_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~1_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(10),
	combout => Y11i(10));

-- Location: MLABCELL_X87_Y21_N45
\temp11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~0_combout\ = ( \Add0~1_sumout\ & ( (\Y13s[2]~input_o\) # (\Y13s[1]~input_o\) ) ) # ( !\Add0~1_sumout\ & ( (!\Y13s[1]~input_o\ & \Y13s[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y13s[1]~input_o\,
	datad => \ALT_INV_Y13s[2]~input_o\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \temp11~0_combout\);

-- Location: MLABCELL_X87_Y21_N39
\Y11i[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(0) = ( Y11i(0) & ( (!\clk_enable~input_o\) # (\temp11~0_combout\) ) ) # ( !Y11i(0) & ( (\temp11~0_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~0_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(0),
	combout => Y11i(0));

-- Location: MLABCELL_X87_Y20_N51
\temp11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~2_combout\ = ( \Add0~9_sumout\ & ( \Y13s[1]~input_o\ ) ) # ( \Add0~9_sumout\ & ( !\Y13s[1]~input_o\ & ( \Y13s[9]~input_o\ ) ) ) # ( !\Add0~9_sumout\ & ( !\Y13s[1]~input_o\ & ( \Y13s[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y13s[9]~input_o\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Y13s[1]~input_o\,
	combout => \temp11~2_combout\);

-- Location: LABCELL_X88_Y21_N42
\Y11i[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(7) = ( Y11i(7) & ( (!\clk_enable~input_o\) # (\temp11~2_combout\) ) ) # ( !Y11i(7) & ( (\temp11~2_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp11~2_combout\,
	datac => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(7),
	combout => Y11i(7));

-- Location: LABCELL_X88_Y20_N42
\temp11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~4_combout\ = (!\Y13s[1]~input_o\ & ((\Y13s[11]~input_o\))) # (\Y13s[1]~input_o\ & (\Add0~17_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Y13s[11]~input_o\,
	combout => \temp11~4_combout\);

-- Location: MLABCELL_X87_Y21_N27
\Y11i[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(9) = ( \clk_enable~input_o\ & ( Y11i(9) & ( \temp11~4_combout\ ) ) ) # ( !\clk_enable~input_o\ & ( Y11i(9) ) ) # ( \clk_enable~input_o\ & ( !Y11i(9) & ( \temp11~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~4_combout\,
	datae => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(9),
	combout => Y11i(9));

-- Location: LABCELL_X88_Y20_N36
\temp11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~3_combout\ = (!\Y13s[1]~input_o\ & ((\Y13s[10]~input_o\))) # (\Y13s[1]~input_o\ & (\Add0~13_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Y13s[10]~input_o\,
	combout => \temp11~3_combout\);

-- Location: LABCELL_X88_Y21_N9
\Y11i[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(8) = ( Y11i(8) & ( (!\clk_enable~input_o\) # (\temp11~3_combout\) ) ) # ( !Y11i(8) & ( (\temp11~3_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~3_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(8),
	combout => Y11i(8));

-- Location: MLABCELL_X87_Y21_N30
\Y8i~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~0_combout\ = ( Y11i(8) & ( (!Y11i(10)) # ((Y11i(0) & (Y11i(7) & Y11i(9)))) ) ) # ( !Y11i(8) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(7))) # (Y11i(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101010101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(10),
	datab => ALT_INV_Y11i(0),
	datac => ALT_INV_Y11i(7),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(8),
	combout => \Y8i~0_combout\);

-- Location: MLABCELL_X87_Y21_N33
\Y8i[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(0) = ( \Y8i~0_combout\ & ( (\clk_enable~input_o\) # (Y8i(0)) ) ) # ( !\Y8i~0_combout\ & ( (Y8i(0) & !\clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Y8i(0),
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => \ALT_INV_Y8i~0_combout\,
	combout => Y8i(0));

-- Location: LABCELL_X88_Y21_N57
\Y8s[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[0]$latch~combout\ = ( Y8i(0) & ( (\clk_enable~input_o\) # (\Y8s[0]$latch~combout\) ) ) # ( !Y8i(0) & ( (\Y8s[0]$latch~combout\ & !\clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y8s[0]$latch~combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y8i(0),
	combout => \Y8s[0]$latch~combout\);

-- Location: LABCELL_X88_Y20_N48
\temp11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~5_combout\ = (!\Y13s[1]~input_o\ & (\Y13s[3]~input_o\)) # (\Y13s[1]~input_o\ & ((\Add0~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datac => \ALT_INV_Y13s[3]~input_o\,
	datad => \ALT_INV_Add0~21_sumout\,
	combout => \temp11~5_combout\);

-- Location: MLABCELL_X87_Y21_N0
\Y11i[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(1) = ( \clk_enable~input_o\ & ( Y11i(1) & ( \temp11~5_combout\ ) ) ) # ( !\clk_enable~input_o\ & ( Y11i(1) ) ) # ( \clk_enable~input_o\ & ( !Y11i(1) & ( \temp11~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~5_combout\,
	datae => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(1),
	combout => Y11i(1));

-- Location: MLABCELL_X87_Y21_N9
\Y8i~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~1_combout\ = ( Y11i(1) & ( (!Y11i(10)) # ((Y11i(7) & (Y11i(8) & Y11i(9)))) ) ) # ( !Y11i(1) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(8))) # (Y11i(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100010011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(7),
	datab => ALT_INV_Y11i(10),
	datac => ALT_INV_Y11i(8),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(1),
	combout => \Y8i~1_combout\);

-- Location: MLABCELL_X87_Y21_N15
\Y8i[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(1) = ( Y8i(1) & ( (!\clk_enable~input_o\) # (\Y8i~1_combout\) ) ) # ( !Y8i(1) & ( (\Y8i~1_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y8i~1_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y8i(1),
	combout => Y8i(1));

-- Location: LABCELL_X88_Y21_N18
\Y8s[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[1]$latch~combout\ = ( \Y8s[1]$latch~combout\ & ( (!\clk_enable~input_o\) # (Y8i(1)) ) ) # ( !\Y8s[1]$latch~combout\ & ( (Y8i(1) & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y8i(1),
	datac => \ALT_INV_clk_enable~input_o\,
	dataf => \ALT_INV_Y8s[1]$latch~combout\,
	combout => \Y8s[1]$latch~combout\);

-- Location: LABCELL_X88_Y20_N39
\temp11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~6_combout\ = ( \Y13s[4]~input_o\ & ( (!\Y13s[1]~input_o\) # (\Add0~25_sumout\) ) ) # ( !\Y13s[4]~input_o\ & ( (\Y13s[1]~input_o\ & \Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Y13s[4]~input_o\,
	combout => \temp11~6_combout\);

-- Location: MLABCELL_X87_Y21_N12
\Y11i[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(2) = ( Y11i(2) & ( (!\clk_enable~input_o\) # (\temp11~6_combout\) ) ) # ( !Y11i(2) & ( (\temp11~6_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~6_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(2),
	combout => Y11i(2));

-- Location: MLABCELL_X87_Y21_N42
\Y8i~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~2_combout\ = ( Y11i(2) & ( (!Y11i(10)) # ((Y11i(7) & (Y11i(8) & Y11i(9)))) ) ) # ( !Y11i(2) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(8))) # (Y11i(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100010011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(7),
	datab => ALT_INV_Y11i(10),
	datac => ALT_INV_Y11i(8),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(2),
	combout => \Y8i~2_combout\);

-- Location: MLABCELL_X87_Y21_N6
\Y8i[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(2) = ( \Y8i~2_combout\ & ( (\clk_enable~input_o\) # (Y8i(2)) ) ) # ( !\Y8i~2_combout\ & ( (Y8i(2) & !\clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Y8i(2),
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => \ALT_INV_Y8i~2_combout\,
	combout => Y8i(2));

-- Location: MLABCELL_X87_Y21_N18
\Y8s[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[2]$latch~combout\ = ( \clk_enable~input_o\ & ( Y8i(2) ) ) # ( !\clk_enable~input_o\ & ( Y8i(2) & ( \Y8s[2]$latch~combout\ ) ) ) # ( !\clk_enable~input_o\ & ( !Y8i(2) & ( \Y8s[2]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y8s[2]$latch~combout\,
	datae => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y8i(2),
	combout => \Y8s[2]$latch~combout\);

-- Location: LABCELL_X88_Y20_N57
\temp11~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~7_combout\ = ( \Y13s[5]~input_o\ & ( (!\Y13s[1]~input_o\) # (\Add0~29_sumout\) ) ) # ( !\Y13s[5]~input_o\ & ( (\Y13s[1]~input_o\ & \Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datac => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Y13s[5]~input_o\,
	combout => \temp11~7_combout\);

-- Location: LABCELL_X88_Y21_N51
\Y11i[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(3) = ( Y11i(3) & ( (!\clk_enable~input_o\) # (\temp11~7_combout\) ) ) # ( !Y11i(3) & ( (\temp11~7_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~7_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(3),
	combout => Y11i(3));

-- Location: LABCELL_X88_Y21_N24
\Y8i~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~3_combout\ = ( Y11i(8) & ( (!Y11i(10)) # ((Y11i(3) & (Y11i(7) & Y11i(9)))) ) ) # ( !Y11i(8) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(7))) # (Y11i(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000011100001111000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(3),
	datab => ALT_INV_Y11i(7),
	datac => ALT_INV_Y11i(10),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(8),
	combout => \Y8i~3_combout\);

-- Location: LABCELL_X88_Y21_N27
\Y8i[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(3) = ( Y8i(3) & ( (!\clk_enable~input_o\) # (\Y8i~3_combout\) ) ) # ( !Y8i(3) & ( (\Y8i~3_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y8i~3_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y8i(3),
	combout => Y8i(3));

-- Location: LABCELL_X88_Y21_N48
\Y8s[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[3]$latch~combout\ = ( \clk_enable~input_o\ & ( Y8i(3) ) ) # ( !\clk_enable~input_o\ & ( \Y8s[3]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y8s[3]$latch~combout\,
	datac => ALT_INV_Y8i(3),
	dataf => \ALT_INV_clk_enable~input_o\,
	combout => \Y8s[3]$latch~combout\);

-- Location: LABCELL_X88_Y20_N54
\temp11~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~8_combout\ = ( \Y13s[6]~input_o\ & ( (!\Y13s[1]~input_o\) # (\Add0~33_sumout\) ) ) # ( !\Y13s[6]~input_o\ & ( (\Y13s[1]~input_o\ & \Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datab => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Y13s[6]~input_o\,
	combout => \temp11~8_combout\);

-- Location: MLABCELL_X87_Y21_N48
\Y11i[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(4) = ( Y11i(4) & ( (!\clk_enable~input_o\) # (\temp11~8_combout\) ) ) # ( !Y11i(4) & ( (\temp11~8_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~8_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(4),
	combout => Y11i(4));

-- Location: MLABCELL_X87_Y21_N57
\Y8i~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~4_combout\ = ( Y11i(8) & ( (!Y11i(10)) # ((Y11i(7) & (Y11i(4) & Y11i(9)))) ) ) # ( !Y11i(8) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(4))) # (Y11i(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100010011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(7),
	datab => ALT_INV_Y11i(10),
	datac => ALT_INV_Y11i(4),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(8),
	combout => \Y8i~4_combout\);

-- Location: MLABCELL_X87_Y21_N51
\Y8i[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(4) = ( Y8i(4) & ( (!\clk_enable~input_o\) # (\Y8i~4_combout\) ) ) # ( !Y8i(4) & ( (\Y8i~4_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y8i~4_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y8i(4),
	combout => Y8i(4));

-- Location: LABCELL_X88_Y21_N0
\Y8s[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[4]$latch~combout\ = ( \clk_enable~input_o\ & ( Y8i(4) ) ) # ( !\clk_enable~input_o\ & ( \Y8s[4]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Y8i(4),
	datad => \ALT_INV_Y8s[4]$latch~combout\,
	dataf => \ALT_INV_clk_enable~input_o\,
	combout => \Y8s[4]$latch~combout\);

-- Location: LABCELL_X88_Y20_N51
\temp11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~9_combout\ = ( \Add0~37_sumout\ & ( (\Y13s[7]~input_o\) # (\Y13s[1]~input_o\) ) ) # ( !\Add0~37_sumout\ & ( (!\Y13s[1]~input_o\ & \Y13s[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datad => \ALT_INV_Y13s[7]~input_o\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \temp11~9_combout\);

-- Location: LABCELL_X88_Y21_N39
\Y11i[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(5) = ( Y11i(5) & ( (!\clk_enable~input_o\) # (\temp11~9_combout\) ) ) # ( !Y11i(5) & ( (\temp11~9_combout\ & \clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~9_combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(5),
	combout => Y11i(5));

-- Location: LABCELL_X88_Y21_N54
\Y8i~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~5_combout\ = ( Y11i(5) & ( (!Y11i(10)) # ((Y11i(8) & (Y11i(7) & Y11i(9)))) ) ) # ( !Y11i(5) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(7))) # (Y11i(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000011100001111000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(8),
	datab => ALT_INV_Y11i(7),
	datac => ALT_INV_Y11i(10),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(5),
	combout => \Y8i~5_combout\);

-- Location: LABCELL_X88_Y21_N45
\Y8i[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(5) = ( \clk_enable~input_o\ & ( \Y8i~5_combout\ ) ) # ( !\clk_enable~input_o\ & ( Y8i(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y8i~5_combout\,
	datad => ALT_INV_Y8i(5),
	dataf => \ALT_INV_clk_enable~input_o\,
	combout => Y8i(5));

-- Location: LABCELL_X88_Y21_N36
\Y8s[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[5]$latch~combout\ = (!\clk_enable~input_o\ & ((\Y8s[5]$latch~combout\))) # (\clk_enable~input_o\ & (Y8i(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Y8i(5),
	datac => \ALT_INV_clk_enable~input_o\,
	datad => \ALT_INV_Y8s[5]$latch~combout\,
	combout => \Y8s[5]$latch~combout\);

-- Location: LABCELL_X88_Y20_N45
\temp11~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp11~10_combout\ = ( \Add0~41_sumout\ & ( (\Y13s[8]~input_o\) # (\Y13s[1]~input_o\) ) ) # ( !\Add0~41_sumout\ & ( (!\Y13s[1]~input_o\ & \Y13s[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y13s[1]~input_o\,
	datad => \ALT_INV_Y13s[8]~input_o\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \temp11~10_combout\);

-- Location: LABCELL_X88_Y21_N21
\Y11i[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y11i(6) = ( \clk_enable~input_o\ & ( \temp11~10_combout\ ) ) # ( !\clk_enable~input_o\ & ( Y11i(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp11~10_combout\,
	datad => ALT_INV_Y11i(6),
	dataf => \ALT_INV_clk_enable~input_o\,
	combout => Y11i(6));

-- Location: LABCELL_X88_Y21_N3
\Y8i~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8i~6_combout\ = ( Y11i(6) & ( (!Y11i(10)) # ((Y11i(8) & (Y11i(7) & Y11i(9)))) ) ) # ( !Y11i(6) & ( (!Y11i(10) & (((Y11i(9)) # (Y11i(7))) # (Y11i(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100010011001100110011001100110011011100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Y11i(8),
	datab => ALT_INV_Y11i(10),
	datac => ALT_INV_Y11i(7),
	datad => ALT_INV_Y11i(9),
	dataf => ALT_INV_Y11i(6),
	combout => \Y8i~6_combout\);

-- Location: LABCELL_X88_Y21_N12
\Y8i[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(6) = ( \Y8i~6_combout\ & ( (\clk_enable~input_o\) # (Y8i(6)) ) ) # ( !\Y8i~6_combout\ & ( (Y8i(6) & !\clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Y8i(6),
	datac => \ALT_INV_clk_enable~input_o\,
	dataf => \ALT_INV_Y8i~6_combout\,
	combout => Y8i(6));

-- Location: LABCELL_X88_Y21_N33
\Y8s[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[6]$latch~combout\ = ( Y8i(6) & ( (\clk_enable~input_o\) # (\Y8s[6]$latch~combout\) ) ) # ( !Y8i(6) & ( (\Y8s[6]$latch~combout\ & !\clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y8s[6]$latch~combout\,
	datad => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y8i(6),
	combout => \Y8s[6]$latch~combout\);

-- Location: LABCELL_X88_Y21_N6
\Y8i[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Y8i(7) = ( Y11i(10) & ( (\clk_enable~input_o\) # (Y8i(7)) ) ) # ( !Y11i(10) & ( (Y8i(7) & !\clk_enable~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Y8i(7),
	datac => \ALT_INV_clk_enable~input_o\,
	dataf => ALT_INV_Y11i(10),
	combout => Y8i(7));

-- Location: LABCELL_X88_Y21_N15
\Y8s[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y8s[7]$latch~combout\ = ( Y8i(7) & ( (\Y8s[7]$latch~combout\) # (\clk_enable~input_o\) ) ) # ( !Y8i(7) & ( (!\clk_enable~input_o\ & \Y8s[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk_enable~input_o\,
	datac => \ALT_INV_Y8s[7]$latch~combout\,
	dataf => ALT_INV_Y8i(7),
	combout => \Y8s[7]$latch~combout\);

-- Location: IOIBUF_X36_Y81_N1
\Y13s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y13s(0),
	o => \Y13s[0]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X27_Y45_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


