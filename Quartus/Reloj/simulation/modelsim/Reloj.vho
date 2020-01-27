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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "08/14/2019 13:29:23"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Contador_10 IS
    PORT (
	CLK : IN std_logic;
	Enable : IN std_logic;
	Carry_out : BUFFER std_logic;
	salida : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Contador_10;

-- Design Ports Information
-- Carry_out	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Contador_10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Carry_out : std_logic;
SIGNAL ww_salida : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Conta1[0]~3_combout\ : std_logic;
SIGNAL \Conta1[2]~1_combout\ : std_logic;
SIGNAL \Conta1~0_combout\ : std_logic;
SIGNAL \Conta1~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL Conta1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Enable~input_o\ : std_logic;
SIGNAL ALT_INV_Conta1 : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_Enable <= Enable;
Carry_out <= ww_Carry_out;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Enable~input_o\ <= NOT \Enable~input_o\;
ALT_INV_Conta1(3) <= NOT Conta1(3);
ALT_INV_Conta1(2) <= NOT Conta1(2);
ALT_INV_Conta1(0) <= NOT Conta1(0);
ALT_INV_Conta1(1) <= NOT Conta1(1);

-- Location: IOOBUF_X89_Y6_N22
\Carry_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_Carry_out);

-- Location: IOOBUF_X52_Y0_N2
\salida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Conta1(0),
	devoe => ww_devoe,
	o => ww_salida(0));

-- Location: IOOBUF_X52_Y0_N19
\salida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Conta1(1),
	devoe => ww_devoe,
	o => ww_salida(1));

-- Location: IOOBUF_X60_Y0_N2
\salida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Conta1(2),
	devoe => ww_devoe,
	o => ww_salida(2));

-- Location: IOOBUF_X80_Y0_N2
\salida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Conta1(3),
	devoe => ww_devoe,
	o => ww_salida(3));

-- Location: IOIBUF_X36_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G7
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\Enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: LABCELL_X57_Y2_N57
\Conta1[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Conta1[0]~3_combout\ = ( !Conta1(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_Conta1(0),
	combout => \Conta1[0]~3_combout\);

-- Location: FF_X57_Y2_N59
\Conta1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Conta1[0]~3_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Conta1(0));

-- Location: LABCELL_X57_Y2_N42
\Conta1[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Conta1[2]~1_combout\ = ( Conta1(2) & ( Conta1(1) & ( (!\Enable~input_o\) # (!Conta1(0)) ) ) ) # ( !Conta1(2) & ( Conta1(1) & ( (\Enable~input_o\ & Conta1(0)) ) ) ) # ( Conta1(2) & ( !Conta1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Enable~input_o\,
	datad => ALT_INV_Conta1(0),
	datae => ALT_INV_Conta1(2),
	dataf => ALT_INV_Conta1(1),
	combout => \Conta1[2]~1_combout\);

-- Location: FF_X57_Y2_N44
\Conta1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Conta1[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Conta1(2));

-- Location: LABCELL_X57_Y2_N48
\Conta1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Conta1~0_combout\ = ( Conta1(0) & ( (!Conta1(1) & ((!Conta1(3)) # (Conta1(2)))) ) ) # ( !Conta1(0) & ( Conta1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Conta1(2),
	datac => ALT_INV_Conta1(3),
	datad => ALT_INV_Conta1(1),
	dataf => ALT_INV_Conta1(0),
	combout => \Conta1~0_combout\);

-- Location: FF_X57_Y2_N50
\Conta1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Conta1~0_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Conta1(1));

-- Location: LABCELL_X57_Y2_N24
\Conta1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Conta1~2_combout\ = ( Conta1(3) & ( Conta1(0) & ( !Conta1(1) $ (!Conta1(2)) ) ) ) # ( !Conta1(3) & ( Conta1(0) & ( (Conta1(1) & Conta1(2)) ) ) ) # ( Conta1(3) & ( !Conta1(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Conta1(1),
	datad => ALT_INV_Conta1(2),
	datae => ALT_INV_Conta1(3),
	dataf => ALT_INV_Conta1(0),
	combout => \Conta1~2_combout\);

-- Location: FF_X57_Y2_N26
\Conta1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Conta1~2_combout\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Conta1(3));

-- Location: LABCELL_X57_Y2_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !Conta1(1) & ( (Conta1(3) & (!Conta1(2) & Conta1(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Conta1(3),
	datab => ALT_INV_Conta1(2),
	datac => ALT_INV_Conta1(0),
	dataf => ALT_INV_Conta1(1),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X10_Y66_N3
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


