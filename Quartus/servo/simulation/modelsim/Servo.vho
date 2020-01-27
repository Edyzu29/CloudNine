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

-- DATE "08/10/2019 13:13:46"

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

ENTITY 	Servo IS
    PORT (
	CLK : IN std_logic;
	uili : IN std_logic_vector(3 DOWNTO 0);
	salida : BUFFER std_logic
	);
END Servo;

-- Design Ports Information
-- salida	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uili[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uili[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uili[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uili[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Servo IS
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
SIGNAL ww_uili : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_salida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \conta0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \conta0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \conta0[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \conta0[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \conta0[7]~DUPLICATE_q\ : std_logic;
SIGNAL \conta0[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \conta0[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \makaku~q\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \conta1[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \conta1[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \conta1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \conta1[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \conta1[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \conta1[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \conta1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conta1[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \conta1[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \conta1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \conta1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \uili[0]~input_o\ : std_logic;
SIGNAL \uili[1]~input_o\ : std_logic;
SIGNAL \uili[2]~input_o\ : std_logic;
SIGNAL \uili[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \conta1[10]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL conta1 : std_logic_vector(15 DOWNTO 0);
SIGNAL conta0 : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_conta0[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_uili[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_uili[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_uili[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_uili[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL ALT_INV_conta0 : std_logic_vector(27 DOWNTO 0);
SIGNAL ALT_INV_conta1 : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_uili <= uili;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_conta0[24]~DUPLICATE_q\ <= NOT \conta0[24]~DUPLICATE_q\;
\ALT_INV_conta0[13]~DUPLICATE_q\ <= NOT \conta0[13]~DUPLICATE_q\;
\ALT_INV_conta0[9]~DUPLICATE_q\ <= NOT \conta0[9]~DUPLICATE_q\;
\ALT_INV_conta0[7]~DUPLICATE_q\ <= NOT \conta0[7]~DUPLICATE_q\;
\ALT_INV_conta0[3]~DUPLICATE_q\ <= NOT \conta0[3]~DUPLICATE_q\;
\ALT_INV_conta0[0]~DUPLICATE_q\ <= NOT \conta0[0]~DUPLICATE_q\;
\ALT_INV_conta0[11]~DUPLICATE_q\ <= NOT \conta0[11]~DUPLICATE_q\;
\ALT_INV_conta1[12]~DUPLICATE_q\ <= NOT \conta1[12]~DUPLICATE_q\;
\ALT_INV_conta1[13]~DUPLICATE_q\ <= NOT \conta1[13]~DUPLICATE_q\;
\ALT_INV_conta1[14]~DUPLICATE_q\ <= NOT \conta1[14]~DUPLICATE_q\;
\ALT_INV_conta1[6]~DUPLICATE_q\ <= NOT \conta1[6]~DUPLICATE_q\;
\ALT_INV_conta1[7]~DUPLICATE_q\ <= NOT \conta1[7]~DUPLICATE_q\;
\ALT_INV_conta1[0]~DUPLICATE_q\ <= NOT \conta1[0]~DUPLICATE_q\;
\ALT_INV_conta1[1]~DUPLICATE_q\ <= NOT \conta1[1]~DUPLICATE_q\;
\ALT_INV_conta1[3]~DUPLICATE_q\ <= NOT \conta1[3]~DUPLICATE_q\;
\ALT_INV_conta1[8]~DUPLICATE_q\ <= NOT \conta1[8]~DUPLICATE_q\;
\ALT_INV_conta1[10]~DUPLICATE_q\ <= NOT \conta1[10]~DUPLICATE_q\;
\ALT_INV_conta1[11]~DUPLICATE_q\ <= NOT \conta1[11]~DUPLICATE_q\;
\ALT_INV_conta1[9]~DUPLICATE_q\ <= NOT \conta1[9]~DUPLICATE_q\;
\ALT_INV_uili[3]~input_o\ <= NOT \uili[3]~input_o\;
\ALT_INV_uili[2]~input_o\ <= NOT \uili[2]~input_o\;
\ALT_INV_uili[1]~input_o\ <= NOT \uili[1]~input_o\;
\ALT_INV_uili[0]~input_o\ <= NOT \uili[0]~input_o\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
ALT_INV_conta0(27) <= NOT conta0(27);
ALT_INV_conta0(26) <= NOT conta0(26);
ALT_INV_conta0(25) <= NOT conta0(25);
ALT_INV_conta0(24) <= NOT conta0(24);
ALT_INV_conta0(23) <= NOT conta0(23);
ALT_INV_conta0(22) <= NOT conta0(22);
ALT_INV_conta0(21) <= NOT conta0(21);
ALT_INV_conta0(20) <= NOT conta0(20);
ALT_INV_conta0(19) <= NOT conta0(19);
ALT_INV_conta0(18) <= NOT conta0(18);
ALT_INV_conta0(17) <= NOT conta0(17);
ALT_INV_conta0(16) <= NOT conta0(16);
ALT_INV_conta0(15) <= NOT conta0(15);
ALT_INV_conta0(14) <= NOT conta0(14);
ALT_INV_conta0(13) <= NOT conta0(13);
ALT_INV_conta0(12) <= NOT conta0(12);
ALT_INV_conta0(10) <= NOT conta0(10);
ALT_INV_conta0(9) <= NOT conta0(9);
ALT_INV_conta0(8) <= NOT conta0(8);
ALT_INV_conta0(7) <= NOT conta0(7);
ALT_INV_conta0(6) <= NOT conta0(6);
ALT_INV_conta0(5) <= NOT conta0(5);
ALT_INV_conta0(4) <= NOT conta0(4);
ALT_INV_conta0(3) <= NOT conta0(3);
ALT_INV_conta0(2) <= NOT conta0(2);
ALT_INV_conta0(1) <= NOT conta0(1);
ALT_INV_conta0(0) <= NOT conta0(0);
ALT_INV_conta0(11) <= NOT conta0(11);
ALT_INV_conta1(12) <= NOT conta1(12);
ALT_INV_conta1(13) <= NOT conta1(13);
ALT_INV_conta1(15) <= NOT conta1(15);
ALT_INV_conta1(14) <= NOT conta1(14);
ALT_INV_conta1(4) <= NOT conta1(4);
ALT_INV_conta1(6) <= NOT conta1(6);
ALT_INV_conta1(7) <= NOT conta1(7);
ALT_INV_conta1(5) <= NOT conta1(5);
ALT_INV_conta1(0) <= NOT conta1(0);
ALT_INV_conta1(1) <= NOT conta1(1);
ALT_INV_conta1(2) <= NOT conta1(2);
ALT_INV_conta1(3) <= NOT conta1(3);
ALT_INV_conta1(8) <= NOT conta1(8);
ALT_INV_conta1(10) <= NOT conta1(10);
ALT_INV_conta1(11) <= NOT conta1(11);
ALT_INV_conta1(9) <= NOT conta1(9);

-- Location: IOOBUF_X64_Y0_N2
\salida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~11_combout\,
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

-- Location: LABCELL_X19_Y4_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \conta0[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~6\ = CARRY(( \conta0[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X19_Y4_N31
\conta0[0]~DUPLICATE\ : dffeas
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
	q => \conta0[0]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N33
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( conta0(1) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( conta0(1) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(1),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X19_Y4_N35
\conta0[1]\ : dffeas
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
	q => conta0(1));

-- Location: LABCELL_X19_Y4_N36
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( conta0(2) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( conta0(2) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(2),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X19_Y4_N38
\conta0[2]\ : dffeas
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
	q => conta0(2));

-- Location: FF_X19_Y4_N32
\conta0[0]\ : dffeas
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
	q => conta0(0));

-- Location: LABCELL_X19_Y4_N39
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \conta0[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \conta0[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[3]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X19_Y4_N41
\conta0[3]~DUPLICATE\ : dffeas
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
	q => \conta0[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N42
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( conta0(4) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( conta0(4) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta0(4),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X19_Y4_N44
\conta0[4]\ : dffeas
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
	q => conta0(4));

-- Location: LABCELL_X19_Y4_N45
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( conta0(5) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( conta0(5) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(5),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X19_Y4_N47
\conta0[5]\ : dffeas
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
	q => conta0(5));

-- Location: FF_X19_Y4_N40
\conta0[3]\ : dffeas
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
	q => conta0(3));

-- Location: LABCELL_X19_Y4_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !conta0(3) & ( !conta0(1) & ( (!conta0(2) & (conta0(0) & (conta0(5) & conta0(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(2),
	datab => ALT_INV_conta0(0),
	datac => ALT_INV_conta0(5),
	datad => ALT_INV_conta0(4),
	datae => ALT_INV_conta0(3),
	dataf => ALT_INV_conta0(1),
	combout => \Equal0~0_combout\);

-- Location: FF_X19_Y3_N5
\conta0[11]~DUPLICATE\ : dffeas
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
	q => \conta0[11]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N48
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( conta0(6) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( conta0(6) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(6),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X19_Y4_N50
\conta0[6]\ : dffeas
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
	q => conta0(6));

-- Location: LABCELL_X19_Y4_N51
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( conta0(7) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( conta0(7) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(7),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X19_Y4_N52
\conta0[7]\ : dffeas
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
	q => conta0(7));

-- Location: LABCELL_X19_Y4_N54
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( conta0(8) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( conta0(8) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(8),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X19_Y4_N55
\conta0[8]\ : dffeas
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
	q => conta0(8));

-- Location: LABCELL_X19_Y4_N57
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( conta0(9) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( conta0(9) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(9),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X19_Y4_N59
\conta0[9]\ : dffeas
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
	q => conta0(9));

-- Location: LABCELL_X19_Y3_N0
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( conta0(10) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( conta0(10) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(10),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X19_Y3_N2
\conta0[10]\ : dffeas
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
	q => conta0(10));

-- Location: LABCELL_X19_Y3_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \conta0[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~2\ = CARRY(( \conta0[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_conta0[11]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X19_Y3_N4
\conta0[11]\ : dffeas
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
	q => conta0(11));

-- Location: LABCELL_X19_Y3_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( conta0(12) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~50\ = CARRY(( conta0(12) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta0(12),
	cin => \Add0~2\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X19_Y3_N8
\conta0[12]\ : dffeas
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
	q => conta0(12));

-- Location: LABCELL_X19_Y3_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \conta0[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \conta0[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[13]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X19_Y3_N11
\conta0[13]~DUPLICATE\ : dffeas
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
	q => \conta0[13]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( conta0(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( conta0(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta0(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X19_Y3_N13
\conta0[14]\ : dffeas
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
	q => conta0(14));

-- Location: LABCELL_X19_Y3_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( conta0(15) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( conta0(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X19_Y3_N17
\conta0[15]\ : dffeas
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
	q => conta0(15));

-- Location: LABCELL_X19_Y3_N18
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( conta0(16) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( conta0(16) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(16),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X19_Y3_N20
\conta0[16]\ : dffeas
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
	q => conta0(16));

-- Location: LABCELL_X19_Y3_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( conta0(17) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( conta0(17) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(17),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X19_Y3_N23
\conta0[17]\ : dffeas
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
	q => conta0(17));

-- Location: LABCELL_X19_Y3_N24
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( conta0(18) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( conta0(18) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(18),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X19_Y3_N26
\conta0[18]\ : dffeas
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
	q => conta0(18));

-- Location: LABCELL_X19_Y3_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( conta0(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( conta0(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(19),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X19_Y3_N29
\conta0[19]\ : dffeas
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
	q => conta0(19));

-- Location: LABCELL_X19_Y3_N30
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( conta0(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( conta0(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(20),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X19_Y3_N31
\conta0[20]\ : dffeas
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
	q => conta0(20));

-- Location: LABCELL_X19_Y3_N33
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( conta0(21) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( conta0(21) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(21),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X19_Y3_N35
\conta0[21]\ : dffeas
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
	q => conta0(21));

-- Location: LABCELL_X19_Y3_N36
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( conta0(22) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( conta0(22) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(22),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X19_Y3_N38
\conta0[22]\ : dffeas
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
	q => conta0(22));

-- Location: LABCELL_X19_Y3_N39
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( conta0(23) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( conta0(23) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(23),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X19_Y3_N40
\conta0[23]\ : dffeas
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
	q => conta0(23));

-- Location: LABCELL_X19_Y4_N18
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !conta0(23) & ( !conta0(20) & ( (!conta0(19) & (!conta0(21) & (!conta0(18) & !conta0(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(19),
	datab => ALT_INV_conta0(21),
	datac => ALT_INV_conta0(18),
	datad => ALT_INV_conta0(22),
	datae => ALT_INV_conta0(23),
	dataf => ALT_INV_conta0(20),
	combout => \Equal0~3_combout\);

-- Location: FF_X19_Y4_N53
\conta0[7]~DUPLICATE\ : dffeas
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
	q => \conta0[7]~DUPLICATE_q\);

-- Location: FF_X19_Y4_N58
\conta0[9]~DUPLICATE\ : dffeas
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
	q => \conta0[9]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N6
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !conta0(6) & ( !\conta0[9]~DUPLICATE_q\ & ( (!\conta0[7]~DUPLICATE_q\ & (!conta0(8) & !conta0(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta0[7]~DUPLICATE_q\,
	datab => ALT_INV_conta0(8),
	datac => ALT_INV_conta0(10),
	datae => ALT_INV_conta0(6),
	dataf => \ALT_INV_conta0[9]~DUPLICATE_q\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X19_Y3_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \conta0[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \conta0[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_conta0[24]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X19_Y3_N43
\conta0[24]~DUPLICATE\ : dffeas
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
	q => \conta0[24]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y3_N45
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( conta0(25) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( conta0(25) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(25),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X19_Y3_N46
\conta0[25]\ : dffeas
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
	q => conta0(25));

-- Location: LABCELL_X19_Y3_N48
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( conta0(26) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( conta0(26) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(26),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X19_Y3_N49
\conta0[26]\ : dffeas
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
	q => conta0(26));

-- Location: LABCELL_X19_Y3_N51
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( conta0(27) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(27),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\);

-- Location: FF_X19_Y3_N53
\conta0[27]\ : dffeas
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
	q => conta0(27));

-- Location: FF_X19_Y3_N44
\conta0[24]\ : dffeas
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
	q => conta0(24));

-- Location: LABCELL_X19_Y4_N0
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !conta0(26) & ( !conta0(24) & ( (!conta0(27) & !conta0(25)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(27),
	datad => ALT_INV_conta0(25),
	datae => ALT_INV_conta0(26),
	dataf => ALT_INV_conta0(24),
	combout => \Equal0~4_combout\);

-- Location: FF_X19_Y3_N10
\conta0[13]\ : dffeas
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
	q => conta0(13));

-- Location: LABCELL_X19_Y3_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !conta0(17) & ( !conta0(14) & ( (!conta0(16) & (!conta0(12) & (!conta0(13) & !conta0(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(16),
	datab => ALT_INV_conta0(12),
	datac => ALT_INV_conta0(13),
	datad => ALT_INV_conta0(15),
	datae => ALT_INV_conta0(17),
	dataf => ALT_INV_conta0(14),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X19_Y4_N12
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~4_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~0_combout\ & (!conta0(11) & (\Equal0~3_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => ALT_INV_conta0(11),
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X19_Y4_N23
makaku : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \makaku~q\);

-- Location: LABCELL_X12_Y4_N0
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( conta1(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~30\ = CARRY(( conta1(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta1(0),
	cin => GND,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X12_Y4_N37
\conta1[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~61_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[12]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N15
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( conta1(5) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~34\ = CARRY(( conta1(5) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta1(5),
	cin => \Add1~46\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X12_Y4_N18
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \conta1[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~42\ = CARRY(( \conta1[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[6]~DUPLICATE_q\,
	cin => \Add1~34\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X12_Y4_N19
\conta1[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~41_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[6]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N21
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \conta1[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( \conta1[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_conta1[7]~DUPLICATE_q\,
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X12_Y4_N22
\conta1[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~37_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[7]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \conta1[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~14\ = CARRY(( \conta1[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[8]~DUPLICATE_q\,
	cin => \Add1~38\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X12_Y4_N25
\conta1[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~13_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[8]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N27
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( conta1(9) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~2\ = CARRY(( conta1(9) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(9),
	cin => \Add1~14\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X12_Y4_N29
\conta1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~1_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(9));

-- Location: LABCELL_X12_Y4_N30
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( conta1(10) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~10\ = CARRY(( conta1(10) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(10),
	cin => \Add1~2\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X12_Y4_N32
\conta1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~9_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(10));

-- Location: LABCELL_X12_Y4_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \conta1[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \conta1[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta1[11]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X12_Y4_N34
\conta1[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~5_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[11]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N36
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \conta1[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~62\ = CARRY(( \conta1[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[12]~DUPLICATE_q\,
	cin => \Add1~6\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X12_Y4_N38
\conta1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~61_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(12));

-- Location: FF_X12_Y4_N40
\conta1[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~57_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[13]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N39
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \conta1[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \conta1[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta1[13]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X12_Y4_N41
\conta1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~57_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(13));

-- Location: LABCELL_X12_Y4_N42
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( conta1(14) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~50\ = CARRY(( conta1(14) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(14),
	cin => \Add1~58\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X12_Y4_N43
\conta1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~49_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(14));

-- Location: LABCELL_X12_Y4_N45
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( conta1(15) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta1(15),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\);

-- Location: FF_X12_Y4_N47
\conta1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~53_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(15));

-- Location: FF_X12_Y4_N35
\conta1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~5_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(11));

-- Location: LABCELL_X12_Y4_N54
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( conta1(11) & ( (!conta1(12) & (!conta1(13) & !conta1(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(12),
	datab => ALT_INV_conta1(13),
	datad => ALT_INV_conta1(15),
	dataf => ALT_INV_conta1(11),
	combout => \Equal1~2_combout\);

-- Location: FF_X12_Y4_N11
\conta1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~17_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(3));

-- Location: FF_X12_Y4_N2
\conta1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~29_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[0]~DUPLICATE_q\);

-- Location: FF_X12_Y4_N44
\conta1[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~49_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[14]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y4_N48
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \conta1[14]~DUPLICATE_q\ & ( (conta1(3) & (conta1(2) & (\conta1[1]~DUPLICATE_q\ & \conta1[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(3),
	datab => ALT_INV_conta1(2),
	datac => \ALT_INV_conta1[1]~DUPLICATE_q\,
	datad => \ALT_INV_conta1[0]~DUPLICATE_q\,
	dataf => \ALT_INV_conta1[14]~DUPLICATE_q\,
	combout => \Equal1~0_combout\);

-- Location: FF_X12_Y4_N26
\conta1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~13_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(8));

-- Location: FF_X12_Y4_N20
\conta1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~41_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(6));

-- Location: FF_X12_Y4_N23
\conta1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~37_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(7));

-- Location: FF_X12_Y4_N28
\conta1[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~1_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[9]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y4_N18
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !conta1(7) & ( \conta1[9]~DUPLICATE_q\ & ( (!conta1(8) & (!conta1(5) & !conta1(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(8),
	datac => ALT_INV_conta1(5),
	datad => ALT_INV_conta1(6),
	datae => ALT_INV_conta1(7),
	dataf => \ALT_INV_conta1[9]~DUPLICATE_q\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X12_Y4_N48
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~0_combout\ & ( \Equal1~1_combout\ & ( (conta1(4) & (\Equal1~2_combout\ & conta1(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(4),
	datac => \ALT_INV_Equal1~2_combout\,
	datad => ALT_INV_conta1(10),
	datae => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal1~1_combout\,
	combout => \Equal1~3_combout\);

-- Location: FF_X12_Y4_N1
\conta1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~29_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(0));

-- Location: LABCELL_X12_Y4_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \conta1[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( \conta1[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta1[1]~DUPLICATE_q\,
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X12_Y4_N5
\conta1[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~25_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[1]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N6
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( conta1(2) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( conta1(2) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(2),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X12_Y4_N8
\conta1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~21_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(2));

-- Location: LABCELL_X12_Y4_N9
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \conta1[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( \conta1[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta1[3]~DUPLICATE_q\,
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X12_Y4_N10
\conta1[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~17_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[3]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N12
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( conta1(4) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~46\ = CARRY(( conta1(4) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(4),
	cin => \Add1~18\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X12_Y4_N14
\conta1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~45_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(4));

-- Location: FF_X12_Y4_N17
\conta1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~33_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(5));

-- Location: IOIBUF_X12_Y0_N18
\uili[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uili(0),
	o => \uili[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\uili[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uili(1),
	o => \uili[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\uili[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uili(2),
	o => \uili[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\uili[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uili(3),
	o => \uili[3]~input_o\);

-- Location: LABCELL_X11_Y4_N42
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[1]~input_o\ & ((\uili[2]~input_o\) # (\uili[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datad => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X11_Y4_N45
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[0]~input_o\ & (!\uili[1]~input_o\ $ (!\uili[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datac => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X11_Y4_N27
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( conta1(6) & ( (!\conta1[7]~DUPLICATE_q\ & (\Mux4~0_combout\ & \Mux5~0_combout\)) # (\conta1[7]~DUPLICATE_q\ & ((\Mux5~0_combout\) # (\Mux4~0_combout\))) ) ) # ( !conta1(6) & ( (\conta1[7]~DUPLICATE_q\ & \Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010111110000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta1[7]~DUPLICATE_q\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => ALT_INV_conta1(6),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X11_Y4_N24
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( conta1(6) & ( (!\Mux5~0_combout\ & (!\conta1[7]~DUPLICATE_q\ $ (!\Mux4~0_combout\))) ) ) # ( !conta1(6) & ( (\Mux5~0_combout\ & (!\conta1[7]~DUPLICATE_q\ $ (!\Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta1[7]~DUPLICATE_q\,
	datab => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => ALT_INV_conta1(6),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X11_Y4_N54
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[1]~input_o\ & ((!\uili[0]~input_o\) # (\uili[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100010001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datad => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X11_Y4_N57
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[0]~input_o\ & (!\uili[1]~input_o\ & !\uili[2]~input_o\)) # (\uili[0]~input_o\ & (!\uili[1]~input_o\ $ (!\uili[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010010010100100101001001010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datac => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X11_Y4_N30
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \Mux6~0_combout\ & ( \Mux7~0_combout\ & ( !\LessThan0~5_combout\ ) ) ) # ( !\Mux6~0_combout\ & ( \Mux7~0_combout\ & ( (!\LessThan0~5_combout\ & ((!conta1(5)) # (!\LessThan0~3_combout\))) ) ) ) # ( \Mux6~0_combout\ & ( 
-- !\Mux7~0_combout\ & ( (!\LessThan0~5_combout\ & ((!conta1(5)) # ((!conta1(4)) # (!\LessThan0~3_combout\)))) ) ) ) # ( !\Mux6~0_combout\ & ( !\Mux7~0_combout\ & ( (!\LessThan0~5_combout\ & ((!\LessThan0~3_combout\) # ((!conta1(5) & !conta1(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010000000111100001110000011110000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(5),
	datab => ALT_INV_conta1(4),
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X11_Y4_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[2]~input_o\) # ((!\uili[0]~input_o\ & !\uili[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001000111111111000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datad => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X11_Y4_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[1]~input_o\ & (!\uili[0]~input_o\ & \uili[2]~input_o\)) # (\uili[1]~input_o\ & ((!\uili[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111000001110000011100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datac => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X12_Y4_N31
\conta1[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~9_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[10]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y4_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \conta1[11]~DUPLICATE_q\ & ( \conta1[10]~DUPLICATE_q\ & ( (!\Mux0~0_combout\ & \Mux1~0_combout\) ) ) ) # ( !\conta1[11]~DUPLICATE_q\ & ( \conta1[10]~DUPLICATE_q\ & ( (\Mux0~0_combout\ & \Mux1~0_combout\) ) ) ) # ( 
-- \conta1[11]~DUPLICATE_q\ & ( !\conta1[10]~DUPLICATE_q\ & ( (!\Mux0~0_combout\ & !\Mux1~0_combout\) ) ) ) # ( !\conta1[11]~DUPLICATE_q\ & ( !\conta1[10]~DUPLICATE_q\ & ( (\Mux0~0_combout\ & !\Mux1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_conta1[11]~DUPLICATE_q\,
	dataf => \ALT_INV_conta1[10]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X11_Y4_N39
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[1]~input_o\ & (!\uili[0]~input_o\ $ (!\uili[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datac => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X11_Y4_N0
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\uili[3]~input_o\ & ( (!\uili[0]~input_o\ & (\uili[1]~input_o\ & !\uili[2]~input_o\)) # (\uili[0]~input_o\ & (!\uili[1]~input_o\ & \uili[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[0]~input_o\,
	datab => \ALT_INV_uili[1]~input_o\,
	datad => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X13_Y4_N30
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \Mux3~0_combout\ & ( (\LessThan0~0_combout\ & (!\conta1[8]~DUPLICATE_q\ & (!\Mux2~0_combout\ $ (\conta1[9]~DUPLICATE_q\)))) ) ) # ( !\Mux3~0_combout\ & ( (\LessThan0~0_combout\ & (\conta1[8]~DUPLICATE_q\ & (!\Mux2~0_combout\ $ 
-- (\conta1[9]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000100000000000101000000000001000100000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_conta1[8]~DUPLICATE_q\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_conta1[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X12_Y4_N57
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( !conta1(13) & ( (!conta1(12) & (!conta1(14) & !conta1(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(12),
	datac => ALT_INV_conta1(14),
	datad => ALT_INV_conta1(15),
	dataf => ALT_INV_conta1(13),
	combout => \LessThan0~9_combout\);

-- Location: LABCELL_X13_Y4_N48
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( \conta1[9]~DUPLICATE_q\ & ( !\Mux2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_conta1[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X13_Y4_N18
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \Mux1~0_combout\ & ( \LessThan0~8_combout\ & ( (\LessThan0~9_combout\ & ((!\Mux0~0_combout\ & ((!\conta1[10]~DUPLICATE_q\) # (!\conta1[11]~DUPLICATE_q\))) # (\Mux0~0_combout\ & (!\conta1[10]~DUPLICATE_q\ & 
-- !\conta1[11]~DUPLICATE_q\)))) ) ) ) # ( !\Mux1~0_combout\ & ( \LessThan0~8_combout\ & ( (!\Mux0~0_combout\ & (\LessThan0~9_combout\ & !\conta1[11]~DUPLICATE_q\)) ) ) ) # ( \Mux1~0_combout\ & ( !\LessThan0~8_combout\ & ( (\LessThan0~9_combout\ & 
-- ((!\Mux0~0_combout\) # (!\conta1[11]~DUPLICATE_q\))) ) ) ) # ( !\Mux1~0_combout\ & ( !\LessThan0~8_combout\ & ( (\LessThan0~9_combout\ & ((!\Mux0~0_combout\ & ((!\conta1[10]~DUPLICATE_q\) # (!\conta1[11]~DUPLICATE_q\))) # (\Mux0~0_combout\ & 
-- (!\conta1[10]~DUPLICATE_q\ & !\conta1[11]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000100000001100110010001000100010000000000011001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_LessThan0~9_combout\,
	datac => \ALT_INV_conta1[10]~DUPLICATE_q\,
	datad => \ALT_INV_conta1[11]~DUPLICATE_q\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X12_Y4_N4
\conta1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \makaku~q\,
	d => \Add1~25_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(1));

-- Location: LABCELL_X11_Y4_N6
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( \uili[2]~input_o\ & ( \uili[0]~input_o\ & ( (!\uili[3]~input_o\ & (conta1(1) & !\uili[1]~input_o\)) ) ) ) # ( !\uili[2]~input_o\ & ( \uili[0]~input_o\ & ( (!\uili[3]~input_o\ & ((!conta1(1) & (\conta1[0]~DUPLICATE_q\ & 
-- !\uili[1]~input_o\)) # (conta1(1) & ((!\uili[1]~input_o\) # (\conta1[0]~DUPLICATE_q\))))) ) ) ) # ( \uili[2]~input_o\ & ( !\uili[0]~input_o\ & ( (!\uili[3]~input_o\ & (!\uili[1]~input_o\ & ((\conta1[0]~DUPLICATE_q\) # (conta1(1))))) ) ) ) # ( 
-- !\uili[2]~input_o\ & ( !\uili[0]~input_o\ & ( (!\uili[3]~input_o\ & (conta1(1) & \uili[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010001010100000000000101010000000100010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_uili[3]~input_o\,
	datab => ALT_INV_conta1(1),
	datac => \ALT_INV_conta1[0]~DUPLICATE_q\,
	datad => \ALT_INV_uili[1]~input_o\,
	datae => \ALT_INV_uili[2]~input_o\,
	dataf => \ALT_INV_uili[0]~input_o\,
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X11_Y4_N51
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \Mux3~0_combout\ & ( (!conta1(3) & (conta1(2) & (\LessThan0~12_combout\ & !\Mux1~0_combout\))) # (conta1(3) & ((!\Mux1~0_combout\) # ((conta1(2) & \LessThan0~12_combout\)))) ) ) # ( !\Mux3~0_combout\ & ( (!conta1(3) & 
-- (!\Mux1~0_combout\ & ((\LessThan0~12_combout\) # (conta1(2))))) # (conta1(3) & (((!\Mux1~0_combout\) # (\LessThan0~12_combout\)) # (conta1(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100010101011111110001010101010111000000010101011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(3),
	datab => ALT_INV_conta1(2),
	datac => \ALT_INV_LessThan0~12_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X11_Y4_N12
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \Mux6~0_combout\ & ( \Mux7~0_combout\ & ( (conta1(5) & (\LessThan0~3_combout\ & conta1(4))) ) ) ) # ( !\Mux6~0_combout\ & ( \Mux7~0_combout\ & ( (!conta1(5) & (\LessThan0~3_combout\ & conta1(4))) ) ) ) # ( \Mux6~0_combout\ & ( 
-- !\Mux7~0_combout\ & ( (conta1(5) & (\LessThan0~3_combout\ & !conta1(4))) ) ) ) # ( !\Mux6~0_combout\ & ( !\Mux7~0_combout\ & ( (!conta1(5) & (\LessThan0~3_combout\ & !conta1(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000100000001000000000010000000100000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(5),
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_conta1(4),
	datae => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux7~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X13_Y4_N33
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \Mux2~0_combout\ & ( (\LessThan0~0_combout\ & (\conta1[8]~DUPLICATE_q\ & (\Mux3~0_combout\ & \conta1[9]~DUPLICATE_q\))) ) ) # ( !\Mux2~0_combout\ & ( (\LessThan0~0_combout\ & (\conta1[8]~DUPLICATE_q\ & (\Mux3~0_combout\ & 
-- !\conta1[9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_conta1[8]~DUPLICATE_q\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_conta1[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X13_Y4_N24
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \LessThan0~4_combout\ & ( \LessThan0~1_combout\ ) ) # ( !\LessThan0~4_combout\ & ( \LessThan0~1_combout\ ) ) # ( \LessThan0~4_combout\ & ( !\LessThan0~1_combout\ & ( (!\LessThan0~10_combout\) # ((\LessThan0~7_combout\ & 
-- ((!\LessThan0~6_combout\) # (\LessThan0~2_combout\)))) ) ) ) # ( !\LessThan0~4_combout\ & ( !\LessThan0~1_combout\ & ( (!\LessThan0~10_combout\) # ((!\LessThan0~6_combout\ & \LessThan0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110010111100101111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~6_combout\,
	datab => \ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X30_Y32_N0
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


