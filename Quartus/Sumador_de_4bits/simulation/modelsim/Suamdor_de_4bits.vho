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

-- DATE "08/14/2019 12:14:14"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Suamdor_de_4bits IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	y : IN std_logic_vector(3 DOWNTO 0);
	C_in : IN std_logic;
	Suma_4bits : BUFFER std_logic_vector(3 DOWNTO 0);
	C_out : BUFFER std_logic
	);
END Suamdor_de_4bits;

-- Design Ports Information
-- Suma_4bits[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma_4bits[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma_4bits[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Suma_4bits[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_out	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_in	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Suamdor_de_4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C_in : std_logic;
SIGNAL ww_Suma_4bits : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \C_in~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \U0|Suma_1bit~combout\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \U1|Suma_1bit~combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \U1|C_out_1bit~combout\ : std_logic;
SIGNAL \U2|Suma_1bit~combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \U3|Suma_1bit~combout\ : std_logic;
SIGNAL \U3|C_out_1bit~combout\ : std_logic;
SIGNAL \ALT_INV_y[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_y[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_C_in~input_o\ : std_logic;
SIGNAL \U1|ALT_INV_C_out_1bit~combout\ : std_logic;

BEGIN

ww_X <= X;
ww_y <= y;
ww_C_in <= C_in;
Suma_4bits <= ww_Suma_4bits;
C_out <= ww_C_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y[3]~input_o\ <= NOT \y[3]~input_o\;
\ALT_INV_X[3]~input_o\ <= NOT \X[3]~input_o\;
\ALT_INV_y[2]~input_o\ <= NOT \y[2]~input_o\;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\ALT_INV_y[1]~input_o\ <= NOT \y[1]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_y[0]~input_o\ <= NOT \y[0]~input_o\;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_C_in~input_o\ <= NOT \C_in~input_o\;
\U1|ALT_INV_C_out_1bit~combout\ <= NOT \U1|C_out_1bit~combout\;

-- Location: IOOBUF_X52_Y0_N2
\Suma_4bits[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U0|Suma_1bit~combout\,
	devoe => ww_devoe,
	o => ww_Suma_4bits(0));

-- Location: IOOBUF_X52_Y0_N19
\Suma_4bits[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Suma_1bit~combout\,
	devoe => ww_devoe,
	o => ww_Suma_4bits(1));

-- Location: IOOBUF_X60_Y0_N2
\Suma_4bits[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Suma_1bit~combout\,
	devoe => ww_devoe,
	o => ww_Suma_4bits(2));

-- Location: IOOBUF_X80_Y0_N2
\Suma_4bits[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Suma_1bit~combout\,
	devoe => ww_devoe,
	o => ww_Suma_4bits(3));

-- Location: IOOBUF_X89_Y6_N22
\C_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|C_out_1bit~combout\,
	devoe => ww_devoe,
	o => ww_C_out);

-- Location: IOIBUF_X2_Y0_N41
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\C_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_in,
	o => \C_in~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\y[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: LABCELL_X13_Y2_N30
\U0|Suma_1bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \U0|Suma_1bit~combout\ = ( \y[0]~input_o\ & ( !\X[0]~input_o\ $ (\C_in~input_o\) ) ) # ( !\y[0]~input_o\ & ( !\X[0]~input_o\ $ (!\C_in~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_C_in~input_o\,
	dataf => \ALT_INV_y[0]~input_o\,
	combout => \U0|Suma_1bit~combout\);

-- Location: IOIBUF_X16_Y0_N1
\y[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LABCELL_X13_Y2_N9
\U1|Suma_1bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Suma_1bit~combout\ = ( \y[1]~input_o\ & ( \X[1]~input_o\ & ( (!\C_in~input_o\ & (\X[0]~input_o\ & \y[0]~input_o\)) # (\C_in~input_o\ & ((\y[0]~input_o\) # (\X[0]~input_o\))) ) ) ) # ( !\y[1]~input_o\ & ( \X[1]~input_o\ & ( (!\C_in~input_o\ & 
-- ((!\X[0]~input_o\) # (!\y[0]~input_o\))) # (\C_in~input_o\ & (!\X[0]~input_o\ & !\y[0]~input_o\)) ) ) ) # ( \y[1]~input_o\ & ( !\X[1]~input_o\ & ( (!\C_in~input_o\ & ((!\X[0]~input_o\) # (!\y[0]~input_o\))) # (\C_in~input_o\ & (!\X[0]~input_o\ & 
-- !\y[0]~input_o\)) ) ) ) # ( !\y[1]~input_o\ & ( !\X[1]~input_o\ & ( (!\C_in~input_o\ & (\X[0]~input_o\ & \y[0]~input_o\)) # (\C_in~input_o\ & ((\y[0]~input_o\) # (\X[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111111110101010000011111010101000000000010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C_in~input_o\,
	datac => \ALT_INV_X[0]~input_o\,
	datad => \ALT_INV_y[0]~input_o\,
	datae => \ALT_INV_y[1]~input_o\,
	dataf => \ALT_INV_X[1]~input_o\,
	combout => \U1|Suma_1bit~combout\);

-- Location: IOIBUF_X4_Y0_N35
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\y[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LABCELL_X13_Y2_N42
\U1|C_out_1bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|C_out_1bit~combout\ = ( \y[1]~input_o\ & ( \X[1]~input_o\ ) ) # ( !\y[1]~input_o\ & ( \X[1]~input_o\ & ( (!\y[0]~input_o\ & (\X[0]~input_o\ & \C_in~input_o\)) # (\y[0]~input_o\ & ((\C_in~input_o\) # (\X[0]~input_o\))) ) ) ) # ( \y[1]~input_o\ & ( 
-- !\X[1]~input_o\ & ( (!\y[0]~input_o\ & (\X[0]~input_o\ & \C_in~input_o\)) # (\y[0]~input_o\ & ((\C_in~input_o\) # (\X[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100010111000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y[0]~input_o\,
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_C_in~input_o\,
	datae => \ALT_INV_y[1]~input_o\,
	dataf => \ALT_INV_X[1]~input_o\,
	combout => \U1|C_out_1bit~combout\);

-- Location: LABCELL_X13_Y2_N21
\U2|Suma_1bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Suma_1bit~combout\ = ( \y[2]~input_o\ & ( \U1|C_out_1bit~combout\ & ( \X[2]~input_o\ ) ) ) # ( !\y[2]~input_o\ & ( \U1|C_out_1bit~combout\ & ( !\X[2]~input_o\ ) ) ) # ( \y[2]~input_o\ & ( !\U1|C_out_1bit~combout\ & ( !\X[2]~input_o\ ) ) ) # ( 
-- !\y[2]~input_o\ & ( !\U1|C_out_1bit~combout\ & ( \X[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_y[2]~input_o\,
	dataf => \U1|ALT_INV_C_out_1bit~combout\,
	combout => \U2|Suma_1bit~combout\);

-- Location: IOIBUF_X4_Y0_N1
\X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\y[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LABCELL_X13_Y2_N54
\U3|Suma_1bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Suma_1bit~combout\ = ( \y[2]~input_o\ & ( \U1|C_out_1bit~combout\ & ( !\X[3]~input_o\ $ (\y[3]~input_o\) ) ) ) # ( !\y[2]~input_o\ & ( \U1|C_out_1bit~combout\ & ( !\X[2]~input_o\ $ (!\X[3]~input_o\ $ (\y[3]~input_o\)) ) ) ) # ( \y[2]~input_o\ & ( 
-- !\U1|C_out_1bit~combout\ & ( !\X[2]~input_o\ $ (!\X[3]~input_o\ $ (\y[3]~input_o\)) ) ) ) # ( !\y[2]~input_o\ & ( !\U1|C_out_1bit~combout\ & ( !\X[3]~input_o\ $ (!\y[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000001111001100001100111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[3]~input_o\,
	datad => \ALT_INV_y[3]~input_o\,
	datae => \ALT_INV_y[2]~input_o\,
	dataf => \U1|ALT_INV_C_out_1bit~combout\,
	combout => \U3|Suma_1bit~combout\);

-- Location: LABCELL_X13_Y2_N3
\U3|C_out_1bit\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|C_out_1bit~combout\ = ( \y[2]~input_o\ & ( \U1|C_out_1bit~combout\ & ( (\y[3]~input_o\) # (\X[3]~input_o\) ) ) ) # ( !\y[2]~input_o\ & ( \U1|C_out_1bit~combout\ & ( (!\X[3]~input_o\ & (\y[3]~input_o\ & \X[2]~input_o\)) # (\X[3]~input_o\ & 
-- ((\X[2]~input_o\) # (\y[3]~input_o\))) ) ) ) # ( \y[2]~input_o\ & ( !\U1|C_out_1bit~combout\ & ( (!\X[3]~input_o\ & (\y[3]~input_o\ & \X[2]~input_o\)) # (\X[3]~input_o\ & ((\X[2]~input_o\) # (\y[3]~input_o\))) ) ) ) # ( !\y[2]~input_o\ & ( 
-- !\U1|C_out_1bit~combout\ & ( (\X[3]~input_o\ & \y[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000101110001011100010111000101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[3]~input_o\,
	datab => \ALT_INV_y[3]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_y[2]~input_o\,
	dataf => \U1|ALT_INV_C_out_1bit~combout\,
	combout => \U3|C_out_1bit~combout\);

-- Location: LABCELL_X10_Y26_N3
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


