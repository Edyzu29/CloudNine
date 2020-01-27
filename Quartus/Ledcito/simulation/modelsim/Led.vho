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

-- DATE "08/10/2019 10:34:10"

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

ENTITY 	Led IS
    PORT (
	CLK : IN std_logic;
	salida : BUFFER std_logic
	);
END Led;

-- Design Ports Information
-- salida	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Led IS
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
SIGNAL ww_salida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \conta[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \conta[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \conta[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \conta[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \conta[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \conta[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \conta[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \conta[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \conta[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \conta[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \conta[27]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \makaku~feeder_combout\ : std_logic;
SIGNAL \makaku~q\ : std_logic;
SIGNAL \salida~0_combout\ : std_logic;
SIGNAL \salida~reg0feeder_combout\ : std_logic;
SIGNAL \salida~reg0_q\ : std_logic;
SIGNAL conta : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_conta[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_salida~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_salida~reg0_q\ : std_logic;
SIGNAL ALT_INV_conta : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_conta[0]~DUPLICATE_q\ <= NOT \conta[0]~DUPLICATE_q\;
\ALT_INV_conta[3]~DUPLICATE_q\ <= NOT \conta[3]~DUPLICATE_q\;
\ALT_INV_conta[7]~DUPLICATE_q\ <= NOT \conta[7]~DUPLICATE_q\;
\ALT_INV_conta[14]~DUPLICATE_q\ <= NOT \conta[14]~DUPLICATE_q\;
\ALT_INV_conta[15]~DUPLICATE_q\ <= NOT \conta[15]~DUPLICATE_q\;
\ALT_INV_conta[18]~DUPLICATE_q\ <= NOT \conta[18]~DUPLICATE_q\;
\ALT_INV_conta[19]~DUPLICATE_q\ <= NOT \conta[19]~DUPLICATE_q\;
\ALT_INV_conta[20]~DUPLICATE_q\ <= NOT \conta[20]~DUPLICATE_q\;
\ALT_INV_conta[21]~DUPLICATE_q\ <= NOT \conta[21]~DUPLICATE_q\;
\ALT_INV_conta[22]~DUPLICATE_q\ <= NOT \conta[22]~DUPLICATE_q\;
\ALT_INV_conta[27]~DUPLICATE_q\ <= NOT \conta[27]~DUPLICATE_q\;
\ALT_INV_salida~0_combout\ <= NOT \salida~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_salida~reg0_q\ <= NOT \salida~reg0_q\;
ALT_INV_conta(0) <= NOT conta(0);
ALT_INV_conta(1) <= NOT conta(1);
ALT_INV_conta(2) <= NOT conta(2);
ALT_INV_conta(3) <= NOT conta(3);
ALT_INV_conta(4) <= NOT conta(4);
ALT_INV_conta(5) <= NOT conta(5);
ALT_INV_conta(6) <= NOT conta(6);
ALT_INV_conta(7) <= NOT conta(7);
ALT_INV_conta(8) <= NOT conta(8);
ALT_INV_conta(9) <= NOT conta(9);
ALT_INV_conta(10) <= NOT conta(10);
ALT_INV_conta(11) <= NOT conta(11);
ALT_INV_conta(12) <= NOT conta(12);
ALT_INV_conta(13) <= NOT conta(13);
ALT_INV_conta(14) <= NOT conta(14);
ALT_INV_conta(15) <= NOT conta(15);
ALT_INV_conta(17) <= NOT conta(17);
ALT_INV_conta(18) <= NOT conta(18);
ALT_INV_conta(19) <= NOT conta(19);
ALT_INV_conta(20) <= NOT conta(20);
ALT_INV_conta(21) <= NOT conta(21);
ALT_INV_conta(22) <= NOT conta(22);
ALT_INV_conta(23) <= NOT conta(23);
ALT_INV_conta(24) <= NOT conta(24);
ALT_INV_conta(25) <= NOT conta(25);
ALT_INV_conta(26) <= NOT conta(26);
ALT_INV_conta(27) <= NOT conta(27);
ALT_INV_conta(16) <= NOT conta(16);

-- Location: IOOBUF_X52_Y0_N2
\salida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \salida~reg0_q\,
	devoe => ww_devoe,
	o => ww_salida);

-- Location: IOIBUF_X32_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X37_Y13_N30
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \conta[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~110\ = CARRY(( \conta[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X37_Y13_N31
\conta[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y13_N33
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( conta(1) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( conta(1) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(1),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X37_Y13_N35
\conta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(1));

-- Location: LABCELL_X37_Y13_N36
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( conta(2) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( conta(2) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(2),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X37_Y13_N38
\conta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(2));

-- Location: LABCELL_X37_Y13_N39
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \conta[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( \conta[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta[3]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X37_Y13_N41
\conta[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[3]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y13_N42
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( conta(4) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~94\ = CARRY(( conta(4) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta(4),
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X37_Y13_N43
\conta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(4));

-- Location: LABCELL_X37_Y13_N45
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( conta(5) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~90\ = CARRY(( conta(5) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(5),
	cin => \Add0~94\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X37_Y13_N47
\conta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(5));

-- Location: LABCELL_X37_Y13_N48
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( conta(6) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( conta(6) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(6),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X37_Y13_N50
\conta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(6));

-- Location: LABCELL_X37_Y13_N51
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \conta[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( \conta[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta[7]~DUPLICATE_q\,
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X37_Y13_N53
\conta[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[7]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y13_N54
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( conta(8) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( conta(8) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(8),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X37_Y13_N56
\conta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(8));

-- Location: LABCELL_X37_Y13_N57
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( conta(9) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~74\ = CARRY(( conta(9) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(9),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X37_Y13_N58
\conta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(9));

-- Location: LABCELL_X37_Y12_N0
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( conta(10) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( conta(10) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(10),
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X37_Y12_N2
\conta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(10));

-- Location: LABCELL_X37_Y12_N3
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( conta(11) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( conta(11) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(11),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X37_Y12_N5
\conta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(11));

-- Location: LABCELL_X37_Y12_N6
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( conta(12) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( conta(12) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(12),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X37_Y12_N7
\conta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(12));

-- Location: LABCELL_X37_Y12_N9
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( conta(13) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( conta(13) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(13),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X37_Y12_N11
\conta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(13));

-- Location: LABCELL_X37_Y12_N12
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \conta[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( \conta[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta[14]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X37_Y12_N14
\conta[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[14]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y12_N15
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \conta[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( \conta[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta[15]~DUPLICATE_q\,
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X37_Y12_N16
\conta[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[15]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y12_N18
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( conta(16) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~2\ = CARRY(( conta(16) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta(16),
	cin => \Add0~50\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X37_Y12_N19
\conta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(16));

-- Location: FF_X37_Y13_N32
\conta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(0));

-- Location: FF_X37_Y13_N40
\conta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(3));

-- Location: LABCELL_X37_Y13_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( conta(3) & ( conta(1) & ( (conta(2) & conta(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(2),
	datad => ALT_INV_conta(0),
	datae => ALT_INV_conta(3),
	dataf => ALT_INV_conta(1),
	combout => \Equal0~4_combout\);

-- Location: FF_X37_Y12_N17
\conta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(15));

-- Location: FF_X37_Y12_N13
\conta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(14));

-- Location: LABCELL_X36_Y12_N39
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !conta(10) & ( conta(14) & ( (!conta(11) & (conta(15) & (conta(12) & conta(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(11),
	datab => ALT_INV_conta(15),
	datac => ALT_INV_conta(12),
	datad => ALT_INV_conta(13),
	datae => ALT_INV_conta(10),
	dataf => ALT_INV_conta(14),
	combout => \Equal0~2_combout\);

-- Location: FF_X37_Y13_N52
\conta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(7));

-- Location: LABCELL_X37_Y13_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !conta(7) & ( !conta(9) & ( (!conta(8) & (conta(5) & (conta(6) & conta(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(8),
	datab => ALT_INV_conta(5),
	datac => ALT_INV_conta(6),
	datad => ALT_INV_conta(4),
	datae => ALT_INV_conta(7),
	dataf => ALT_INV_conta(9),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X37_Y12_N21
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( conta(17) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~46\ = CARRY(( conta(17) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta(17),
	cin => \Add0~2\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X37_Y12_N23
\conta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(17));

-- Location: FF_X37_Y12_N34
\conta[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[21]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y12_N24
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \conta[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( \conta[18]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta[18]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X37_Y12_N26
\conta[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[18]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y12_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \conta[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( \conta[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta[19]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X37_Y12_N28
\conta[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[19]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y12_N30
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \conta[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( \conta[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta[20]~DUPLICATE_q\,
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X37_Y12_N31
\conta[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[20]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y12_N33
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \conta[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( \conta[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta[21]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X37_Y12_N35
\conta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(21));

-- Location: FF_X37_Y12_N32
\conta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(20));

-- Location: FF_X37_Y12_N29
\conta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(19));

-- Location: FF_X37_Y12_N25
\conta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(18));

-- Location: LABCELL_X37_Y12_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( conta(19) & ( !conta(18) & ( (conta(17) & (conta(21) & conta(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(17),
	datac => ALT_INV_conta(21),
	datad => ALT_INV_conta(20),
	datae => ALT_INV_conta(19),
	dataf => ALT_INV_conta(18),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X37_Y12_N36
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( conta(22) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( conta(22) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(22),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X37_Y12_N38
\conta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(22));

-- Location: LABCELL_X37_Y12_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( conta(23) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( conta(23) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(23),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X37_Y12_N40
\conta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(23));

-- Location: LABCELL_X37_Y12_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( conta(24) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( conta(24) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta(24),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X37_Y12_N44
\conta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(24));

-- Location: FF_X37_Y12_N37
\conta[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[22]~DUPLICATE_q\);

-- Location: FF_X37_Y12_N53
\conta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(27));

-- Location: LABCELL_X37_Y12_N45
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( conta(25) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( conta(25) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta(25),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X37_Y12_N46
\conta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(25));

-- Location: LABCELL_X37_Y12_N48
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( conta(26) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( conta(26) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta(26),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X37_Y12_N49
\conta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(26));

-- Location: LABCELL_X37_Y12_N51
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( conta(27) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(27),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\);

-- Location: FF_X37_Y12_N52
\conta[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta[27]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y13_N21
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !conta(26) & ( conta(25) & ( (conta(23) & (!conta(24) & (\conta[22]~DUPLICATE_q\ & !\conta[27]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(23),
	datab => ALT_INV_conta(24),
	datac => \ALT_INV_conta[22]~DUPLICATE_q\,
	datad => \ALT_INV_conta[27]~DUPLICATE_q\,
	datae => ALT_INV_conta(26),
	dataf => ALT_INV_conta(25),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X37_Y13_N24
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~1_combout\ & ( \Equal0~0_combout\ & ( (!conta(16) & (\Equal0~4_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta(16),
	datab => \ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X37_Y13_N3
\makaku~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \makaku~feeder_combout\ = \Equal0~5_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	combout => \makaku~feeder_combout\);

-- Location: FF_X37_Y13_N5
makaku : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \makaku~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \makaku~q\);

-- Location: LABCELL_X36_Y13_N24
\salida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \salida~0_combout\ = ( !\salida~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_salida~reg0_q\,
	combout => \salida~0_combout\);

-- Location: LABCELL_X36_Y13_N51
\salida~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \salida~reg0feeder_combout\ = ( \salida~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_salida~0_combout\,
	combout => \salida~reg0feeder_combout\);

-- Location: FF_X36_Y13_N53
\salida~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \salida~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \salida~reg0_q\);

-- Location: MLABCELL_X47_Y20_N0
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


