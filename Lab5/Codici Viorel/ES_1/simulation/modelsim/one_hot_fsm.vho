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

-- DATE "04/14/2025 05:51:43"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	one_hot_fsm IS
    PORT (
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END one_hot_fsm;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF one_hot_fsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \x6~0_combout\ : std_logic;
SIGNAL \x6~q\ : std_logic;
SIGNAL \x7~1_combout\ : std_logic;
SIGNAL \x7~q\ : std_logic;
SIGNAL \x0~0_combout\ : std_logic;
SIGNAL \x0~1_combout\ : std_logic;
SIGNAL \x0~q\ : std_logic;
SIGNAL \x3~0_combout\ : std_logic;
SIGNAL \x3~q\ : std_logic;
SIGNAL \x1~0_combout\ : std_logic;
SIGNAL \x1~1_combout\ : std_logic;
SIGNAL \x1~q\ : std_logic;
SIGNAL \x2~0_combout\ : std_logic;
SIGNAL \x2~q\ : std_logic;
SIGNAL \x4~1_combout\ : std_logic;
SIGNAL \x4~0_combout\ : std_logic;
SIGNAL \x4~q\ : std_logic;
SIGNAL \x7~0_combout\ : std_logic;
SIGNAL \x5~0_combout\ : std_logic;
SIGNAL \x5~q\ : std_logic;
SIGNAL \x8~1_combout\ : std_logic;
SIGNAL \x8~0_combout\ : std_logic;
SIGNAL \x8~q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_x8~1_combout\ : std_logic;
SIGNAL \ALT_INV_x4~1_combout\ : std_logic;
SIGNAL \ALT_INV_x0~0_combout\ : std_logic;
SIGNAL \ALT_INV_x1~0_combout\ : std_logic;
SIGNAL \ALT_INV_x7~q\ : std_logic;
SIGNAL \ALT_INV_x6~q\ : std_logic;
SIGNAL \ALT_INV_x7~0_combout\ : std_logic;
SIGNAL \ALT_INV_x5~q\ : std_logic;
SIGNAL \ALT_INV_x3~q\ : std_logic;
SIGNAL \ALT_INV_x2~q\ : std_logic;
SIGNAL \ALT_INV_x0~q\ : std_logic;
SIGNAL \ALT_INV_x1~q\ : std_logic;
SIGNAL \ALT_INV_x8~q\ : std_logic;
SIGNAL \ALT_INV_x4~q\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_x8~1_combout\ <= NOT \x8~1_combout\;
\ALT_INV_x4~1_combout\ <= NOT \x4~1_combout\;
\ALT_INV_x0~0_combout\ <= NOT \x0~0_combout\;
\ALT_INV_x1~0_combout\ <= NOT \x1~0_combout\;
\ALT_INV_x7~q\ <= NOT \x7~q\;
\ALT_INV_x6~q\ <= NOT \x6~q\;
\ALT_INV_x7~0_combout\ <= NOT \x7~0_combout\;
\ALT_INV_x5~q\ <= NOT \x5~q\;
\ALT_INV_x3~q\ <= NOT \x3~q\;
\ALT_INV_x2~q\ <= NOT \x2~q\;
\ALT_INV_x0~q\ <= NOT \x0~q\;
\ALT_INV_x1~q\ <= NOT \x1~q\;
\ALT_INV_x8~q\ <= NOT \x8~q\;
\ALT_INV_x4~q\ <= NOT \x4~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \process_2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X16_Y2_N15
\x6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x6~0_combout\ = ( \x7~0_combout\ & ( (\SW[0]~input_o\ & (\SW[1]~input_o\ & \x5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_x5~q\,
	dataf => \ALT_INV_x7~0_combout\,
	combout => \x6~0_combout\);

-- Location: FF_X16_Y2_N17
x6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x6~q\);

-- Location: LABCELL_X16_Y2_N39
\x7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x7~1_combout\ = ( \x7~0_combout\ & ( (\SW[0]~input_o\ & (\SW[1]~input_o\ & (\x6~q\ & !\x5~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_x6~q\,
	datad => \ALT_INV_x5~q\,
	dataf => \ALT_INV_x7~0_combout\,
	combout => \x7~1_combout\);

-- Location: FF_X16_Y2_N41
x7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x7~q\);

-- Location: LABCELL_X16_Y2_N12
\x0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x0~0_combout\ = ( !\x6~q\ & ( (!\x7~q\ & (!\x8~q\ & !\x5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_x7~q\,
	datac => \ALT_INV_x8~q\,
	datad => \ALT_INV_x5~q\,
	dataf => \ALT_INV_x6~q\,
	combout => \x0~0_combout\);

-- Location: LABCELL_X16_Y2_N48
\x0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x0~1_combout\ = ( \x7~0_combout\ & ( (!\SW[0]~input_o\) # (\x0~0_combout\) ) ) # ( !\x7~0_combout\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_x0~0_combout\,
	dataf => \ALT_INV_x7~0_combout\,
	combout => \x0~1_combout\);

-- Location: FF_X16_Y2_N50
x0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x0~q\);

-- Location: LABCELL_X16_Y2_N33
\x3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x3~0_combout\ = ( !\x0~q\ & ( (!\x1~q\ & (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \x2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x1~q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_x2~q\,
	dataf => \ALT_INV_x0~q\,
	combout => \x3~0_combout\);

-- Location: FF_X16_Y2_N35
x3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x3~q\);

-- Location: LABCELL_X16_Y2_N3
\x1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1~0_combout\ = ( !\x2~q\ & ( !\x1~q\ & ( (!\x4~q\ & !\x3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x4~q\,
	datad => \ALT_INV_x3~q\,
	datae => \ALT_INV_x2~q\,
	dataf => \ALT_INV_x1~q\,
	combout => \x1~0_combout\);

-- Location: LABCELL_X16_Y2_N24
\x1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x1~1_combout\ = ( \x0~0_combout\ & ( (\SW[0]~input_o\ & (!\SW[1]~input_o\ & \x0~q\)) ) ) # ( !\x0~0_combout\ & ( (\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((\x1~0_combout\) # (\x0~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_x0~q\,
	datad => \ALT_INV_x1~0_combout\,
	dataf => \ALT_INV_x0~0_combout\,
	combout => \x1~1_combout\);

-- Location: FF_X16_Y2_N26
x1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x1~q\);

-- Location: LABCELL_X16_Y2_N27
\x2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x2~0_combout\ = ( !\x0~q\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \x1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_x1~q\,
	dataf => \ALT_INV_x0~q\,
	combout => \x2~0_combout\);

-- Location: FF_X16_Y2_N29
x2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x2~q\);

-- Location: LABCELL_X16_Y2_N30
\x4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x4~1_combout\ = ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \x4~1_combout\);

-- Location: LABCELL_X16_Y2_N42
\x4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x4~0_combout\ = ( \x4~q\ & ( !\x0~q\ & ( (!\x2~q\ & (\x4~1_combout\ & !\x1~q\)) ) ) ) # ( !\x4~q\ & ( !\x0~q\ & ( (!\x2~q\ & (\x4~1_combout\ & (!\x1~q\ & \x3~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x2~q\,
	datab => \ALT_INV_x4~1_combout\,
	datac => \ALT_INV_x1~q\,
	datad => \ALT_INV_x3~q\,
	datae => \ALT_INV_x4~q\,
	dataf => \ALT_INV_x0~q\,
	combout => \x4~0_combout\);

-- Location: FF_X16_Y2_N44
x4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x4~q\);

-- Location: LABCELL_X16_Y2_N51
\x7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x7~0_combout\ = ( !\x3~q\ & ( (!\x0~q\ & (!\x4~q\ & (!\x1~q\ & !\x2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x0~q\,
	datab => \ALT_INV_x4~q\,
	datac => \ALT_INV_x1~q\,
	datad => \ALT_INV_x2~q\,
	dataf => \ALT_INV_x3~q\,
	combout => \x7~0_combout\);

-- Location: LABCELL_X16_Y2_N54
\x5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x5~0_combout\ = ( \SW[1]~input_o\ & ( !\x7~0_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_x7~0_combout\,
	combout => \x5~0_combout\);

-- Location: FF_X16_Y2_N56
x5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x5~q\);

-- Location: LABCELL_X16_Y2_N6
\x8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8~1_combout\ = ( \SW[0]~input_o\ & ( \x7~q\ & ( (!\x3~q\ & (\SW[1]~input_o\ & !\x6~q\)) ) ) ) # ( \SW[0]~input_o\ & ( !\x7~q\ & ( (!\x3~q\ & (\SW[1]~input_o\ & (\x8~q\ & !\x6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x3~q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_x8~q\,
	datad => \ALT_INV_x6~q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_x7~q\,
	combout => \x8~1_combout\);

-- Location: LABCELL_X16_Y2_N18
\x8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \x8~0_combout\ = ( !\x2~q\ & ( \x8~1_combout\ & ( (!\x5~q\ & (!\x0~q\ & (!\x1~q\ & !\x4~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x5~q\,
	datab => \ALT_INV_x0~q\,
	datac => \ALT_INV_x1~q\,
	datad => \ALT_INV_x4~q\,
	datae => \ALT_INV_x2~q\,
	dataf => \ALT_INV_x8~1_combout\,
	combout => \x8~0_combout\);

-- Location: FF_X16_Y2_N20
x8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \x8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x8~q\);

-- Location: LABCELL_X16_Y2_N36
\process_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = ( \x4~q\ & ( !\x8~q\ ) ) # ( !\x4~q\ & ( \x8~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x8~q\,
	dataf => \ALT_INV_x4~q\,
	combout => \process_2~0_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X43_Y37_N3
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


