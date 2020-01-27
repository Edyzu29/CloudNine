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

-- DATE "08/10/2019 16:02:59"

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

ENTITY 	Moore IS
    PORT (
	w : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	salida : BUFFER std_logic
	);
END Moore;

-- Design Ports Information
-- salida	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Moore IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_salida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \conta0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \conta0[10]~DUPLICATE_q\ : std_logic;
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
SIGNAL \conta0[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \conta0[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \conta0[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \conta0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \conta0[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Clock_1Mz~q\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \conta1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \conta1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \conta1[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \conta1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \conta1[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \conta1[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \conta1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Clock_1z~feeder_combout\ : std_logic;
SIGNAL \Clock_1z~q\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pr_state.C~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \pr_state.B~q\ : std_logic;
SIGNAL \nx_state.D~0_combout\ : std_logic;
SIGNAL \pr_state.D~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \pr_state.A~q\ : std_logic;
SIGNAL \conta2[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \conta2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \conta2[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \conta2[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \conta2[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \conta2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \conta2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \conta2[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL conta2 : std_logic_vector(15 DOWNTO 0);
SIGNAL conta1 : std_logic_vector(19 DOWNTO 0);
SIGNAL conta0 : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_conta0[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta0[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_conta2[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.D~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_pr_state.C~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.B~q\ : std_logic;
SIGNAL \ALT_INV_pr_state.A~q\ : std_logic;
SIGNAL ALT_INV_conta0 : std_logic_vector(27 DOWNTO 0);
SIGNAL ALT_INV_conta1 : std_logic_vector(19 DOWNTO 0);
SIGNAL ALT_INV_conta2 : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_w <= w;
ww_reset <= reset;
ww_clk <= clk;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_conta0[22]~DUPLICATE_q\ <= NOT \conta0[22]~DUPLICATE_q\;
\ALT_INV_conta0[21]~DUPLICATE_q\ <= NOT \conta0[21]~DUPLICATE_q\;
\ALT_INV_conta0[20]~DUPLICATE_q\ <= NOT \conta0[20]~DUPLICATE_q\;
\ALT_INV_conta0[13]~DUPLICATE_q\ <= NOT \conta0[13]~DUPLICATE_q\;
\ALT_INV_conta0[10]~DUPLICATE_q\ <= NOT \conta0[10]~DUPLICATE_q\;
\ALT_INV_conta0[0]~DUPLICATE_q\ <= NOT \conta0[0]~DUPLICATE_q\;
\ALT_INV_conta0[3]~DUPLICATE_q\ <= NOT \conta0[3]~DUPLICATE_q\;
\ALT_INV_conta0[4]~DUPLICATE_q\ <= NOT \conta0[4]~DUPLICATE_q\;
\ALT_INV_conta1[6]~DUPLICATE_q\ <= NOT \conta1[6]~DUPLICATE_q\;
\ALT_INV_conta1[7]~DUPLICATE_q\ <= NOT \conta1[7]~DUPLICATE_q\;
\ALT_INV_conta1[13]~DUPLICATE_q\ <= NOT \conta1[13]~DUPLICATE_q\;
\ALT_INV_conta1[16]~DUPLICATE_q\ <= NOT \conta1[16]~DUPLICATE_q\;
\ALT_INV_conta1[0]~DUPLICATE_q\ <= NOT \conta1[0]~DUPLICATE_q\;
\ALT_INV_conta1[3]~DUPLICATE_q\ <= NOT \conta1[3]~DUPLICATE_q\;
\ALT_INV_conta1[4]~DUPLICATE_q\ <= NOT \conta1[4]~DUPLICATE_q\;
\ALT_INV_conta2[8]~DUPLICATE_q\ <= NOT \conta2[8]~DUPLICATE_q\;
\ALT_INV_conta2[10]~DUPLICATE_q\ <= NOT \conta2[10]~DUPLICATE_q\;
\ALT_INV_conta2[9]~DUPLICATE_q\ <= NOT \conta2[9]~DUPLICATE_q\;
\ALT_INV_conta2[1]~DUPLICATE_q\ <= NOT \conta2[1]~DUPLICATE_q\;
\ALT_INV_conta2[0]~DUPLICATE_q\ <= NOT \conta2[0]~DUPLICATE_q\;
\ALT_INV_conta2[3]~DUPLICATE_q\ <= NOT \conta2[3]~DUPLICATE_q\;
\ALT_INV_conta2[5]~DUPLICATE_q\ <= NOT \conta2[5]~DUPLICATE_q\;
\ALT_INV_conta2[6]~DUPLICATE_q\ <= NOT \conta2[6]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;
\ALT_INV_Equal2~4_combout\ <= NOT \Equal2~4_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_pr_state.D~q\ <= NOT \pr_state.D~q\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_pr_state.C~q\ <= NOT \pr_state.C~q\;
\ALT_INV_pr_state.B~q\ <= NOT \pr_state.B~q\;
\ALT_INV_pr_state.A~q\ <= NOT \pr_state.A~q\;
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
ALT_INV_conta0(0) <= NOT conta0(0);
ALT_INV_conta0(1) <= NOT conta0(1);
ALT_INV_conta0(2) <= NOT conta0(2);
ALT_INV_conta0(3) <= NOT conta0(3);
ALT_INV_conta0(4) <= NOT conta0(4);
ALT_INV_conta0(5) <= NOT conta0(5);
ALT_INV_conta0(11) <= NOT conta0(11);
ALT_INV_conta1(6) <= NOT conta1(6);
ALT_INV_conta1(7) <= NOT conta1(7);
ALT_INV_conta1(8) <= NOT conta1(8);
ALT_INV_conta1(9) <= NOT conta1(9);
ALT_INV_conta1(10) <= NOT conta1(10);
ALT_INV_conta1(11) <= NOT conta1(11);
ALT_INV_conta1(13) <= NOT conta1(13);
ALT_INV_conta1(14) <= NOT conta1(14);
ALT_INV_conta1(15) <= NOT conta1(15);
ALT_INV_conta1(16) <= NOT conta1(16);
ALT_INV_conta1(17) <= NOT conta1(17);
ALT_INV_conta1(18) <= NOT conta1(18);
ALT_INV_conta1(19) <= NOT conta1(19);
ALT_INV_conta1(0) <= NOT conta1(0);
ALT_INV_conta1(1) <= NOT conta1(1);
ALT_INV_conta1(2) <= NOT conta1(2);
ALT_INV_conta1(3) <= NOT conta1(3);
ALT_INV_conta1(4) <= NOT conta1(4);
ALT_INV_conta1(5) <= NOT conta1(5);
ALT_INV_conta1(12) <= NOT conta1(12);
ALT_INV_conta2(12) <= NOT conta2(12);
ALT_INV_conta2(13) <= NOT conta2(13);
ALT_INV_conta2(15) <= NOT conta2(15);
ALT_INV_conta2(14) <= NOT conta2(14);
ALT_INV_conta2(8) <= NOT conta2(8);
ALT_INV_conta2(10) <= NOT conta2(10);
ALT_INV_conta2(11) <= NOT conta2(11);
ALT_INV_conta2(9) <= NOT conta2(9);
ALT_INV_conta2(7) <= NOT conta2(7);
ALT_INV_conta2(2) <= NOT conta2(2);
ALT_INV_conta2(1) <= NOT conta2(1);
ALT_INV_conta2(0) <= NOT conta2(0);
ALT_INV_conta2(3) <= NOT conta2(3);
ALT_INV_conta2(4) <= NOT conta2(4);
ALT_INV_conta2(5) <= NOT conta2(5);
ALT_INV_conta2(6) <= NOT conta2(6);

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
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X40_Y2_N30
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( conta0(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~26\ = CARRY(( conta0(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(0),
	cin => GND,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X40_Y2_N31
\conta0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(0));

-- Location: LABCELL_X40_Y2_N33
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( conta0(1) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( conta0(1) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(1),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X40_Y2_N35
\conta0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(1));

-- Location: LABCELL_X40_Y2_N36
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( conta0(2) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( conta0(2) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(2),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X40_Y2_N38
\conta0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(2));

-- Location: LABCELL_X40_Y2_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \conta0[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( \conta0[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[3]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X40_Y2_N41
\conta0[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N42
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( conta0(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( conta0(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(4),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X40_Y2_N43
\conta0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(4));

-- Location: LABCELL_X40_Y2_N45
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( conta0(5) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( conta0(5) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(5),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X40_Y2_N47
\conta0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(5));

-- Location: LABCELL_X40_Y2_N48
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( conta0(6) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~30\ = CARRY(( conta0(6) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(6),
	cin => \Add0~6\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X40_Y2_N50
\conta0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(6));

-- Location: LABCELL_X40_Y2_N51
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

-- Location: FF_X40_Y2_N52
\conta0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(7));

-- Location: LABCELL_X40_Y2_N54
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( conta0(8) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( conta0(8) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(8),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X40_Y2_N56
\conta0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(8));

-- Location: LABCELL_X40_Y2_N57
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

-- Location: FF_X40_Y2_N59
\conta0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(9));

-- Location: LABCELL_X40_Y1_N0
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \conta0[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \conta0[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[10]~DUPLICATE_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X40_Y1_N2
\conta0[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[10]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( conta0(11) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~2\ = CARRY(( conta0(11) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta0(11),
	cin => \Add0~46\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X40_Y1_N5
\conta0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(11));

-- Location: LABCELL_X40_Y1_N6
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

-- Location: FF_X40_Y1_N8
\conta0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(12));

-- Location: LABCELL_X40_Y1_N9
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

-- Location: FF_X40_Y1_N11
\conta0[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[13]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N12
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

-- Location: FF_X40_Y1_N14
\conta0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(14));

-- Location: LABCELL_X40_Y1_N15
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

-- Location: FF_X40_Y1_N17
\conta0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(15));

-- Location: LABCELL_X40_Y1_N18
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

-- Location: FF_X40_Y1_N20
\conta0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(16));

-- Location: LABCELL_X40_Y1_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( conta0(17) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( conta0(17) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(17),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X40_Y1_N23
\conta0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(17));

-- Location: LABCELL_X40_Y1_N24
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

-- Location: FF_X40_Y1_N26
\conta0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(18));

-- Location: LABCELL_X40_Y1_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( conta0(19) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( conta0(19) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(19),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X40_Y1_N28
\conta0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(19));

-- Location: LABCELL_X40_Y1_N30
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \conta0[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \conta0[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[20]~DUPLICATE_q\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X40_Y1_N31
\conta0[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[20]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N33
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

-- Location: FF_X40_Y1_N35
\conta0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(21));

-- Location: LABCELL_X40_Y1_N36
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \conta0[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \conta0[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta0[22]~DUPLICATE_q\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X40_Y1_N38
\conta0[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[22]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N39
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

-- Location: FF_X40_Y1_N40
\conta0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(23));

-- Location: LABCELL_X40_Y1_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( conta0(24) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( conta0(24) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta0(24),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X40_Y1_N44
\conta0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(24));

-- Location: LABCELL_X40_Y1_N45
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

-- Location: FF_X40_Y1_N47
\conta0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(25));

-- Location: LABCELL_X40_Y1_N48
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

-- Location: FF_X40_Y1_N49
\conta0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(26));

-- Location: LABCELL_X40_Y1_N51
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

-- Location: FF_X40_Y1_N53
\conta0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(27));

-- Location: LABCELL_X40_Y2_N18
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !conta0(24) & ( !conta0(25) & ( (!conta0(26) & !conta0(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta0(26),
	datad => ALT_INV_conta0(27),
	datae => ALT_INV_conta0(24),
	dataf => ALT_INV_conta0(25),
	combout => \Equal0~4_combout\);

-- Location: FF_X40_Y1_N37
\conta0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(22));

-- Location: FF_X40_Y1_N34
\conta0[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[21]~DUPLICATE_q\);

-- Location: FF_X40_Y1_N32
\conta0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(20));

-- Location: LABCELL_X40_Y2_N0
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !conta0(20) & ( !conta0(19) & ( (!conta0(22) & (!conta0(18) & (!conta0(23) & !\conta0[21]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(22),
	datab => ALT_INV_conta0(18),
	datac => ALT_INV_conta0(23),
	datad => \ALT_INV_conta0[21]~DUPLICATE_q\,
	datae => ALT_INV_conta0(20),
	dataf => ALT_INV_conta0(19),
	combout => \Equal0~3_combout\);

-- Location: FF_X40_Y1_N10
\conta0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(13));

-- Location: LABCELL_X40_Y1_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !conta0(13) & ( !conta0(14) & ( (!conta0(16) & (!conta0(12) & (!conta0(17) & !conta0(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(16),
	datab => ALT_INV_conta0(12),
	datac => ALT_INV_conta0(17),
	datad => ALT_INV_conta0(15),
	datae => ALT_INV_conta0(13),
	dataf => ALT_INV_conta0(14),
	combout => \Equal0~2_combout\);

-- Location: FF_X40_Y2_N32
\conta0[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[0]~DUPLICATE_q\);

-- Location: FF_X40_Y2_N40
\conta0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(3));

-- Location: FF_X40_Y2_N44
\conta0[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta0[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y2_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !conta0(3) & ( \conta0[4]~DUPLICATE_q\ & ( (!conta0(2) & (conta0(5) & (!conta0(1) & \conta0[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(2),
	datab => ALT_INV_conta0(5),
	datac => ALT_INV_conta0(1),
	datad => \ALT_INV_conta0[0]~DUPLICATE_q\,
	datae => ALT_INV_conta0(3),
	dataf => \ALT_INV_conta0[4]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X40_Y1_N1
\conta0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta0(10));

-- Location: LABCELL_X40_Y2_N12
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !conta0(10) & ( !conta0(9) & ( (!conta0(6) & (!conta0(8) & !conta0(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta0(6),
	datac => ALT_INV_conta0(8),
	datad => ALT_INV_conta0(7),
	datae => ALT_INV_conta0(10),
	dataf => ALT_INV_conta0(9),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X40_Y2_N24
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~0_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~4_combout\ & (!conta0(11) & (\Equal0~3_combout\ & \Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => ALT_INV_conta0(11),
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X40_Y2_N29
Clock_1Mz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_1Mz~q\);

-- Location: LABCELL_X37_Y2_N0
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \conta1[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add1~26\ = CARRY(( \conta1[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X36_Y2_N43
\conta1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	asdata => \Add1~25_sumout\,
	sclr => \Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N3
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( conta1(1) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( conta1(1) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta1(1),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X37_Y2_N4
\conta1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~21_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(1));

-- Location: LABCELL_X37_Y2_N6
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( conta1(2) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( conta1(2) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(2),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X37_Y2_N8
\conta1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~17_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(2));

-- Location: LABCELL_X37_Y2_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( conta1(3) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( conta1(3) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(3),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X37_Y2_N10
\conta1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~13_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(3));

-- Location: LABCELL_X37_Y2_N12
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \conta1[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( \conta1[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[4]~DUPLICATE_q\,
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X37_Y2_N13
\conta1[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~9_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[4]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N15
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( conta1(5) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( conta1(5) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta1(5),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X37_Y2_N17
\conta1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~5_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(5));

-- Location: LABCELL_X37_Y2_N18
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \conta1[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~78\ = CARRY(( \conta1[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[6]~DUPLICATE_q\,
	cin => \Add1~6\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X37_Y2_N19
\conta1[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~77_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[6]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N21
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \conta1[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( \conta1[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta1[7]~DUPLICATE_q\,
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X37_Y2_N23
\conta1[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~73_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[7]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N24
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( conta1(8) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( conta1(8) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_conta1(8),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X37_Y2_N25
\conta1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~69_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(8));

-- Location: LABCELL_X37_Y2_N27
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( conta1(9) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( conta1(9) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(9),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X37_Y2_N29
\conta1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~65_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(9));

-- Location: LABCELL_X37_Y2_N30
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( conta1(10) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( conta1(10) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(10),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X37_Y2_N32
\conta1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~61_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(10));

-- Location: LABCELL_X37_Y2_N33
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( conta1(11) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( conta1(11) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(11),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X37_Y2_N35
\conta1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~57_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(11));

-- Location: LABCELL_X37_Y2_N36
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( conta1(12) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~2\ = CARRY(( conta1(12) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(12),
	cin => \Add1~58\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X37_Y2_N38
\conta1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~1_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(12));

-- Location: FF_X37_Y2_N22
\conta1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~73_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(7));

-- Location: FF_X37_Y2_N20
\conta1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~77_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(6));

-- Location: LABCELL_X36_Y2_N6
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !conta1(11) & ( !conta1(10) & ( (conta1(9) & (!conta1(8) & (!conta1(7) & !conta1(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(9),
	datab => ALT_INV_conta1(8),
	datac => ALT_INV_conta1(7),
	datad => ALT_INV_conta1(6),
	datae => ALT_INV_conta1(11),
	dataf => ALT_INV_conta1(10),
	combout => \Equal1~2_combout\);

-- Location: FF_X37_Y2_N40
\conta1[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~53_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[13]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \conta1[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~54\ = CARRY(( \conta1[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[13]~DUPLICATE_q\,
	cin => \Add1~2\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X37_Y2_N41
\conta1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~53_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(13));

-- Location: LABCELL_X37_Y2_N42
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( conta1(14) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( conta1(14) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta1(14),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X37_Y2_N44
\conta1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~49_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(14));

-- Location: LABCELL_X37_Y2_N45
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( conta1(15) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( conta1(15) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(15),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X37_Y2_N47
\conta1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~45_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(15));

-- Location: LABCELL_X37_Y2_N48
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \conta1[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( \conta1[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta1[16]~DUPLICATE_q\,
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X37_Y2_N49
\conta1[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~41_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[16]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N51
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( conta1(17) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( conta1(17) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(17),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X37_Y2_N53
\conta1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~37_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(17));

-- Location: FF_X37_Y2_N50
\conta1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~41_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(16));

-- Location: LABCELL_X36_Y2_N24
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !conta1(15) & ( (!conta1(13) & (conta1(14) & (conta1(17) & conta1(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(13),
	datab => ALT_INV_conta1(14),
	datac => ALT_INV_conta1(17),
	datad => ALT_INV_conta1(16),
	dataf => ALT_INV_conta1(15),
	combout => \Equal1~1_combout\);

-- Location: FF_X37_Y2_N14
\conta1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~9_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(4));

-- Location: LABCELL_X37_Y2_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( conta1(18) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( conta1(18) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta1(18),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X37_Y2_N55
\conta1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~33_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(18));

-- Location: LABCELL_X37_Y2_N57
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( conta1(19) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta1(19),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\);

-- Location: FF_X37_Y2_N59
\conta1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~29_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(19));

-- Location: FF_X37_Y2_N11
\conta1[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add1~13_sumout\,
	sclr => \Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta1[3]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N44
\conta1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	asdata => \Add1~25_sumout\,
	sclr => \Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta1(0));

-- Location: LABCELL_X36_Y2_N30
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( conta1(1) & ( conta1(0) & ( (conta1(2) & (conta1(19) & (\conta1[3]~DUPLICATE_q\ & conta1(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(2),
	datab => ALT_INV_conta1(19),
	datac => \ALT_INV_conta1[3]~DUPLICATE_q\,
	datad => ALT_INV_conta1(18),
	datae => ALT_INV_conta1(1),
	dataf => ALT_INV_conta1(0),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X36_Y2_N39
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( conta1(4) & ( \Equal1~0_combout\ & ( (conta1(5) & (!conta1(12) & (\Equal1~2_combout\ & \Equal1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta1(5),
	datab => ALT_INV_conta1(12),
	datac => \ALT_INV_Equal1~2_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => ALT_INV_conta1(4),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X36_Y2_N18
\Clock_1z~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_1z~feeder_combout\ = \Equal1~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~3_combout\,
	combout => \Clock_1z~feeder_combout\);

-- Location: FF_X36_Y2_N20
Clock_1z : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Clock_1z~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_1z~q\);

-- Location: IOIBUF_X36_Y0_N1
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: LABCELL_X36_Y2_N15
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \pr_state.B~q\ & ( (\w~input_o\) # (\pr_state.D~q\) ) ) # ( !\pr_state.B~q\ & ( (\pr_state.D~q\ & !\w~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_state.D~q\,
	datac => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_pr_state.B~q\,
	combout => \Selector2~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X36_Y2_N17
\pr_state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1z~q\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.C~q\);

-- Location: LABCELL_X36_Y2_N54
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \pr_state.C~q\ & ( (!\pr_state.A~q\) # (!\w~input_o\) ) ) # ( !\pr_state.C~q\ & ( (!\pr_state.A~q\ & \w~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_state.A~q\,
	datad => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_pr_state.C~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X36_Y2_N56
\pr_state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1z~q\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.B~q\);

-- Location: LABCELL_X36_Y2_N51
\nx_state.D~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \nx_state.D~0_combout\ = ( !\pr_state.B~q\ & ( (\pr_state.A~q\ & \w~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.A~q\,
	datac => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_pr_state.B~q\,
	combout => \nx_state.D~0_combout\);

-- Location: FF_X36_Y2_N53
\pr_state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1z~q\,
	d => \nx_state.D~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.D~q\);

-- Location: LABCELL_X36_Y2_N48
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \pr_state.C~q\ ) # ( !\pr_state.C~q\ & ( (\w~input_o\) # (\pr_state.D~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pr_state.D~q\,
	datac => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_pr_state.C~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X36_Y2_N50
\pr_state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1z~q\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pr_state.A~q\);

-- Location: FF_X40_Y4_N19
\conta2[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~1_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[6]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N0
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( conta2(0) ) + ( VCC ) + ( !VCC ))
-- \Add2~18\ = CARRY(( conta2(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(0),
	cin => GND,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: FF_X40_Y4_N1
\conta2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~17_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(0));

-- Location: LABCELL_X40_Y4_N3
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \conta2[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \conta2[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta2[1]~DUPLICATE_q\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: FF_X40_Y4_N4
\conta2[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~21_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N6
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( conta2(2) ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( conta2(2) ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(2),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X40_Y4_N8
\conta2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~25_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(2));

-- Location: LABCELL_X40_Y4_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( conta2(3) ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~14\ = CARRY(( conta2(3) ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta2(3),
	cin => \Add2~26\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X40_Y4_N10
\conta2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~13_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(3));

-- Location: LABCELL_X40_Y4_N12
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( conta2(4) ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~10\ = CARRY(( conta2(4) ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(4),
	cin => \Add2~14\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X40_Y4_N14
\conta2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~9_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(4));

-- Location: LABCELL_X40_Y4_N15
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \conta2[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( \conta2[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_conta2[5]~DUPLICATE_q\,
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X40_Y4_N16
\conta2[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~5_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[5]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N18
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \conta2[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~2\ = CARRY(( \conta2[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_conta2[6]~DUPLICATE_q\,
	cin => \Add2~6\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: FF_X40_Y4_N20
\conta2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~1_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(6));

-- Location: FF_X40_Y4_N17
\conta2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~5_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(5));

-- Location: LABCELL_X40_Y4_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( conta2(7) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~30\ = CARRY(( conta2(7) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(7),
	cin => \Add2~2\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X40_Y4_N23
\conta2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~29_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(7));

-- Location: LABCELL_X40_Y4_N51
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( conta2(4) & ( (!conta2(6) & (!conta2(5) & !conta2(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(6),
	datac => ALT_INV_conta2(5),
	datad => ALT_INV_conta2(7),
	dataf => ALT_INV_conta2(4),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X40_Y4_N24
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \conta2[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~46\ = CARRY(( \conta2[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta2[8]~DUPLICATE_q\,
	cin => \Add2~30\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X40_Y4_N25
\conta2[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~45_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[8]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N27
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \conta2[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~34\ = CARRY(( \conta2[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_conta2[9]~DUPLICATE_q\,
	cin => \Add2~46\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X40_Y4_N28
\conta2[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~33_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[9]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \conta2[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~42\ = CARRY(( \conta2[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_conta2[10]~DUPLICATE_q\,
	cin => \Add2~34\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: LABCELL_X40_Y4_N33
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( conta2(11) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~38\ = CARRY(( conta2(11) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(11),
	cin => \Add2~42\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X40_Y4_N35
\conta2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~37_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(11));

-- Location: LABCELL_X40_Y4_N36
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( conta2(12) ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~62\ = CARRY(( conta2(12) ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta2(12),
	cin => \Add2~38\,
	sumout => \Add2~61_sumout\,
	cout => \Add2~62\);

-- Location: FF_X40_Y4_N38
\conta2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~61_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(12));

-- Location: LABCELL_X40_Y4_N39
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( conta2(13) ) + ( GND ) + ( \Add2~62\ ))
-- \Add2~58\ = CARRY(( conta2(13) ) + ( GND ) + ( \Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(13),
	cin => \Add2~62\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X40_Y4_N40
\conta2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~57_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(13));

-- Location: LABCELL_X40_Y4_N42
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( conta2(14) ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~50\ = CARRY(( conta2(14) ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(14),
	cin => \Add2~58\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X40_Y4_N44
\conta2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~49_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(14));

-- Location: LABCELL_X40_Y4_N45
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( conta2(15) ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_conta2(15),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\);

-- Location: FF_X40_Y4_N47
\conta2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~53_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(15));

-- Location: LABCELL_X40_Y4_N48
\Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = ( conta2(2) & ( (!conta2(15) & !conta2(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(15),
	datad => ALT_INV_conta2(13),
	dataf => ALT_INV_conta2(2),
	combout => \Equal2~4_combout\);

-- Location: FF_X40_Y4_N11
\conta2[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~13_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[3]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N29
\conta2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~33_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(9));

-- Location: FF_X40_Y4_N2
\conta2[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~17_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[0]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y4_N57
\Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( \conta2[0]~DUPLICATE_q\ & ( \conta2[10]~DUPLICATE_q\ & ( (conta2(9) & (!conta2(12) & (conta2(14) & conta2(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(9),
	datab => ALT_INV_conta2(12),
	datac => ALT_INV_conta2(14),
	datad => ALT_INV_conta2(11),
	datae => \ALT_INV_conta2[0]~DUPLICATE_q\,
	dataf => \ALT_INV_conta2[10]~DUPLICATE_q\,
	combout => \Equal2~3_combout\);

-- Location: FF_X40_Y4_N26
\conta2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~45_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(8));

-- Location: LABCELL_X40_Y4_N54
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( \Equal2~3_combout\ & ( !conta2(8) & ( (\Equal2~1_combout\ & (\conta2[1]~DUPLICATE_q\ & (\Equal2~4_combout\ & \conta2[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~1_combout\,
	datab => \ALT_INV_conta2[1]~DUPLICATE_q\,
	datac => \ALT_INV_Equal2~4_combout\,
	datad => \ALT_INV_conta2[3]~DUPLICATE_q\,
	datae => \ALT_INV_Equal2~3_combout\,
	dataf => ALT_INV_conta2(8),
	combout => \Equal2~2_combout\);

-- Location: FF_X40_Y4_N32
\conta2[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~41_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta2[10]~DUPLICATE_q\);

-- Location: FF_X40_Y4_N31
\conta2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~41_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(10));

-- Location: MLABCELL_X39_Y2_N57
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \pr_state.A~q\ & ( \pr_state.B~q\ & ( (!conta2(11) & (!conta2(10) $ (!\pr_state.C~q\))) ) ) ) # ( !\pr_state.A~q\ & ( \pr_state.B~q\ & ( (!conta2(10) & !conta2(11)) ) ) ) # ( \pr_state.A~q\ & ( !\pr_state.B~q\ & ( (!conta2(10) & 
-- (conta2(11) & !\pr_state.C~q\)) # (conta2(10) & (!conta2(11) & \pr_state.C~q\)) ) ) ) # ( !\pr_state.A~q\ & ( !\pr_state.B~q\ & ( (!conta2(10) & !conta2(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000001001000010010010001000100010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(10),
	datab => ALT_INV_conta2(11),
	datac => \ALT_INV_pr_state.C~q\,
	datae => \ALT_INV_pr_state.A~q\,
	dataf => \ALT_INV_pr_state.B~q\,
	combout => \LessThan0~6_combout\);

-- Location: MLABCELL_X39_Y2_N36
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( \conta2[9]~DUPLICATE_q\ & ( \pr_state.C~q\ & ( (\pr_state.A~q\ & (\LessThan0~6_combout\ & (!\pr_state.B~q\ & \conta2[8]~DUPLICATE_q\))) ) ) ) # ( !\conta2[9]~DUPLICATE_q\ & ( \pr_state.C~q\ & ( (\LessThan0~6_combout\ & 
-- (\conta2[8]~DUPLICATE_q\ & ((!\pr_state.A~q\) # (\pr_state.B~q\)))) ) ) ) # ( !\conta2[9]~DUPLICATE_q\ & ( !\pr_state.C~q\ & ( (\LessThan0~6_combout\ & (!\conta2[8]~DUPLICATE_q\ $ (((!\pr_state.A~q\) # (!\pr_state.B~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010000000000000000000000000001000110000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.A~q\,
	datab => \ALT_INV_LessThan0~6_combout\,
	datac => \ALT_INV_pr_state.B~q\,
	datad => \ALT_INV_conta2[8]~DUPLICATE_q\,
	datae => \ALT_INV_conta2[9]~DUPLICATE_q\,
	dataf => \ALT_INV_pr_state.C~q\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X40_Y4_N5
\conta2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_1Mz~q\,
	d => \Add2~21_sumout\,
	sclr => \Equal2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta2(1));

-- Location: MLABCELL_X39_Y4_N48
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !\conta2[5]~DUPLICATE_q\ & ( !\conta2[6]~DUPLICATE_q\ & ( (!conta2(4) & ((!\conta2[3]~DUPLICATE_q\) # ((!conta2(1)) # (!conta2(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta2[3]~DUPLICATE_q\,
	datab => ALT_INV_conta2(4),
	datac => ALT_INV_conta2(1),
	datad => ALT_INV_conta2(2),
	datae => \ALT_INV_conta2[5]~DUPLICATE_q\,
	dataf => \ALT_INV_conta2[6]~DUPLICATE_q\,
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X39_Y4_N33
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( \conta2[5]~DUPLICATE_q\ & ( \conta2[6]~DUPLICATE_q\ & ( (conta2(4) & ((conta2(2)) # (\conta2[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta2[3]~DUPLICATE_q\,
	datac => ALT_INV_conta2(4),
	datad => ALT_INV_conta2(2),
	datae => \ALT_INV_conta2[5]~DUPLICATE_q\,
	dataf => \ALT_INV_conta2[6]~DUPLICATE_q\,
	combout => \LessThan0~4_combout\);

-- Location: MLABCELL_X39_Y2_N12
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~4_combout\ & ( conta2(7) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~4_combout\ & ( conta2(7) ) ) ) # ( !\LessThan0~3_combout\ & ( !\LessThan0~4_combout\ & ( (\pr_state.A~q\ & 
-- (!\pr_state.C~q\ & (\pr_state.B~q\ & conta2(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.A~q\,
	datab => \ALT_INV_pr_state.C~q\,
	datac => \ALT_INV_pr_state.B~q\,
	datad => ALT_INV_conta2(7),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: MLABCELL_X39_Y4_N36
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !conta2(2) & ( (!conta2(4) & (!\conta2[5]~DUPLICATE_q\ & !\conta2[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(4),
	datac => \ALT_INV_conta2[5]~DUPLICATE_q\,
	datad => \ALT_INV_conta2[3]~DUPLICATE_q\,
	dataf => ALT_INV_conta2(2),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X39_Y4_N39
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \conta2[0]~DUPLICATE_q\ & ( (!\conta2[3]~DUPLICATE_q\ & !conta2(4)) ) ) # ( !\conta2[0]~DUPLICATE_q\ & ( (!conta2(4) & ((!\conta2[3]~DUPLICATE_q\) # ((!conta2(2) & !conta2(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100010001000110010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta2[3]~DUPLICATE_q\,
	datab => ALT_INV_conta2(4),
	datac => ALT_INV_conta2(2),
	datad => ALT_INV_conta2(1),
	dataf => \ALT_INV_conta2[0]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X39_Y4_N6
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \conta2[5]~DUPLICATE_q\ & ( \LessThan0~0_combout\ & ( (!conta2(7) & (\conta2[6]~DUPLICATE_q\ & ((\pr_state.C~q\)))) # (conta2(7) & (((\conta2[6]~DUPLICATE_q\ & !\LessThan0~1_combout\)) # (\pr_state.C~q\))) ) ) ) # ( 
-- !\conta2[5]~DUPLICATE_q\ & ( \LessThan0~0_combout\ & ( (!conta2(7) & (\conta2[6]~DUPLICATE_q\ & ((\pr_state.C~q\)))) # (conta2(7) & (((\conta2[6]~DUPLICATE_q\ & !\LessThan0~1_combout\)) # (\pr_state.C~q\))) ) ) ) # ( \conta2[5]~DUPLICATE_q\ & ( 
-- !\LessThan0~0_combout\ & ( ((conta2(7) & (\conta2[6]~DUPLICATE_q\ & !\LessThan0~1_combout\))) # (\pr_state.C~q\) ) ) ) # ( !\conta2[5]~DUPLICATE_q\ & ( !\LessThan0~0_combout\ & ( (!conta2(7) & (\conta2[6]~DUPLICATE_q\ & ((\pr_state.C~q\)))) # (conta2(7) & 
-- (((\conta2[6]~DUPLICATE_q\ & !\LessThan0~1_combout\)) # (\pr_state.C~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110111000100001111111100010000011101110001000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_conta2(7),
	datab => \ALT_INV_conta2[6]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_pr_state.C~q\,
	datae => \ALT_INV_conta2[5]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X39_Y2_N6
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( !\conta2[9]~DUPLICATE_q\ & ( conta2(10) & ( (\pr_state.A~q\ & (!conta2(11) & (\pr_state.B~q\ & !\pr_state.C~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.A~q\,
	datab => ALT_INV_conta2(11),
	datac => \ALT_INV_pr_state.B~q\,
	datad => \ALT_INV_pr_state.C~q\,
	datae => \ALT_INV_conta2[9]~DUPLICATE_q\,
	dataf => ALT_INV_conta2(10),
	combout => \LessThan0~8_combout\);

-- Location: MLABCELL_X39_Y2_N48
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \conta2[9]~DUPLICATE_q\ & ( conta2(10) & ( (\pr_state.A~q\ & (!conta2(11) & !\pr_state.B~q\)) ) ) ) # ( !\conta2[9]~DUPLICATE_q\ & ( conta2(10) & ( (\pr_state.A~q\ & (!conta2(11) & ((!\pr_state.B~q\) # (!\pr_state.C~q\)))) ) ) ) 
-- # ( \conta2[9]~DUPLICATE_q\ & ( !conta2(10) & ( (\pr_state.A~q\ & (!conta2(11) & ((!\pr_state.B~q\) # (!\pr_state.C~q\)))) ) ) ) # ( !\conta2[9]~DUPLICATE_q\ & ( !conta2(10) & ( (!conta2(11)) # ((\pr_state.A~q\ & (!\pr_state.B~q\ & !\pr_state.C~q\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011001100010001000100000001000100010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pr_state.A~q\,
	datab => ALT_INV_conta2(11),
	datac => \ALT_INV_pr_state.B~q\,
	datad => \ALT_INV_pr_state.C~q\,
	datae => \ALT_INV_conta2[9]~DUPLICATE_q\,
	dataf => ALT_INV_conta2(10),
	combout => \LessThan0~9_combout\);

-- Location: MLABCELL_X39_Y4_N24
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !conta2(12) & ( (!conta2(13) & !conta2(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_conta2(13),
	datac => ALT_INV_conta2(15),
	datae => ALT_INV_conta2(12),
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X39_Y2_N42
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( \Equal2~0_combout\ & ( (\LessThan0~9_combout\ & (!conta2(14) & ((!\conta2[8]~DUPLICATE_q\) # (!\LessThan0~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_conta2[8]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~8_combout\,
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => ALT_INV_conta2(14),
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \LessThan0~10_combout\);

-- Location: MLABCELL_X39_Y2_N24
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( \pr_state.B~q\ & ( \pr_state.A~q\ & ( (!\LessThan0~10_combout\) # ((\LessThan0~7_combout\ & \LessThan0~5_combout\)) ) ) ) # ( !\pr_state.B~q\ & ( \pr_state.A~q\ & ( (!\LessThan0~10_combout\) # ((\LessThan0~7_combout\ & 
-- ((\LessThan0~2_combout\) # (\LessThan0~5_combout\)))) ) ) ) # ( \pr_state.B~q\ & ( !\pr_state.A~q\ & ( (!\LessThan0~10_combout\) # ((\LessThan0~7_combout\ & \LessThan0~5_combout\)) ) ) ) # ( !\pr_state.B~q\ & ( !\pr_state.A~q\ & ( 
-- (!\LessThan0~10_combout\) # ((\LessThan0~7_combout\ & \LessThan0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001111111110001000111111111000101011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~7_combout\,
	datab => \ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~10_combout\,
	datae => \ALT_INV_pr_state.B~q\,
	dataf => \ALT_INV_pr_state.A~q\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X19_Y25_N3
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


