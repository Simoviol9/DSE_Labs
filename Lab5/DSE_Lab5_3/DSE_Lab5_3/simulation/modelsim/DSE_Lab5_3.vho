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

-- DATE "04/14/2025 09:06:30"

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

ENTITY 	two_process_FSM IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END two_process_FSM;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF two_process_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \y_Q.B~0_combout\ : std_logic;
SIGNAL \y_Q.B~q\ : std_logic;
SIGNAL \y_Q.C~0_combout\ : std_logic;
SIGNAL \y_Q.C~q\ : std_logic;
SIGNAL \y_Q.D~0_combout\ : std_logic;
SIGNAL \y_Q.D~q\ : std_logic;
SIGNAL \y_Q.E~0_combout\ : std_logic;
SIGNAL \y_Q.E~q\ : std_logic;
SIGNAL \y_Q.F~0_combout\ : std_logic;
SIGNAL \y_Q.F~q\ : std_logic;
SIGNAL \y_Q.G~0_combout\ : std_logic;
SIGNAL \y_Q.G~q\ : std_logic;
SIGNAL \y_Q.H~0_combout\ : std_logic;
SIGNAL \y_Q.H~q\ : std_logic;
SIGNAL \y_Q.I~0_combout\ : std_logic;
SIGNAL \y_Q.I~q\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_y_Q.F~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.B~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.G~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.C~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.H~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.D~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.I~q\ : std_logic;
SIGNAL \ALT_INV_y_Q.E~q\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_y_Q.F~q\ <= NOT \y_Q.F~q\;
\ALT_INV_y_Q.B~q\ <= NOT \y_Q.B~q\;
\ALT_INV_y_Q.G~q\ <= NOT \y_Q.G~q\;
\ALT_INV_y_Q.C~q\ <= NOT \y_Q.C~q\;
\ALT_INV_y_Q.H~q\ <= NOT \y_Q.H~q\;
\ALT_INV_y_Q.D~q\ <= NOT \y_Q.D~q\;
\ALT_INV_y_Q.I~q\ <= NOT \y_Q.I~q\;
\ALT_INV_y_Q.E~q\ <= NOT \y_Q.E~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~combout\,
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

-- Location: LABCELL_X16_Y2_N24
\y_Q.B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.B~0_combout\ = ( !\y_Q.B~q\ & ( !\y_Q.C~q\ & ( (\SW[0]~input_o\ & (!\SW[1]~input_o\ & (!\y_Q.E~q\ & !\y_Q.D~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_y_Q.E~q\,
	datad => \ALT_INV_y_Q.D~q\,
	datae => \ALT_INV_y_Q.B~q\,
	dataf => \ALT_INV_y_Q.C~q\,
	combout => \y_Q.B~0_combout\);

-- Location: FF_X16_Y2_N25
\y_Q.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.B~q\);

-- Location: LABCELL_X16_Y2_N48
\y_Q.C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.C~0_combout\ = ( \y_Q.B~q\ & ( (\SW[0]~input_o\ & !\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_y_Q.B~q\,
	combout => \y_Q.C~0_combout\);

-- Location: FF_X16_Y2_N50
\y_Q.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.C~q\);

-- Location: LABCELL_X16_Y2_N6
\y_Q.D~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.D~0_combout\ = ( !\SW[1]~input_o\ & ( \y_Q.C~q\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_y_Q.C~q\,
	combout => \y_Q.D~0_combout\);

-- Location: FF_X16_Y2_N8
\y_Q.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.D~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.D~q\);

-- Location: LABCELL_X16_Y2_N51
\y_Q.E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.E~0_combout\ = ( \y_Q.D~q\ & ( (\SW[0]~input_o\ & !\SW[1]~input_o\) ) ) # ( !\y_Q.D~q\ & ( (\SW[0]~input_o\ & (!\SW[1]~input_o\ & \y_Q.E~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_y_Q.E~q\,
	dataf => \ALT_INV_y_Q.D~q\,
	combout => \y_Q.E~0_combout\);

-- Location: FF_X16_Y2_N53
\y_Q.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.E~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.E~q\);

-- Location: LABCELL_X16_Y2_N12
\y_Q.F~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.F~0_combout\ = ( !\y_Q.F~q\ & ( !\y_Q.G~q\ & ( (\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\y_Q.H~q\ & !\y_Q.I~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_y_Q.H~q\,
	datad => \ALT_INV_y_Q.I~q\,
	datae => \ALT_INV_y_Q.F~q\,
	dataf => \ALT_INV_y_Q.G~q\,
	combout => \y_Q.F~0_combout\);

-- Location: FF_X16_Y2_N13
\y_Q.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.F~q\);

-- Location: LABCELL_X16_Y2_N30
\y_Q.G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.G~0_combout\ = ( \y_Q.F~q\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_y_Q.F~q\,
	combout => \y_Q.G~0_combout\);

-- Location: FF_X16_Y2_N32
\y_Q.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.G~q\);

-- Location: LABCELL_X16_Y2_N33
\y_Q.H~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.H~0_combout\ = ( \y_Q.G~q\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_y_Q.G~q\,
	combout => \y_Q.H~0_combout\);

-- Location: FF_X16_Y2_N35
\y_Q.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.H~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.H~q\);

-- Location: LABCELL_X16_Y2_N45
\y_Q.I~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_Q.I~0_combout\ = ( \y_Q.I~q\ & ( \y_Q.H~q\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) ) ) # ( !\y_Q.I~q\ & ( \y_Q.H~q\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) ) ) # ( \y_Q.I~q\ & ( !\y_Q.H~q\ & ( (\SW[0]~input_o\ & \SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_y_Q.I~q\,
	dataf => \ALT_INV_y_Q.H~q\,
	combout => \y_Q.I~0_combout\);

-- Location: FF_X16_Y2_N47
\y_Q.I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \y_Q.I~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_Q.I~q\);

-- Location: LABCELL_X16_Y2_N36
WideNor0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = ( \y_Q.I~q\ ) # ( !\y_Q.I~q\ & ( \y_Q.E~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y_Q.E~q\,
	datae => \ALT_INV_y_Q.I~q\,
	combout => \WideNor0~combout\);

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

-- Location: MLABCELL_X52_Y2_N3
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


