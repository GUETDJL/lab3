-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/04/2023 11:14:35"

-- 
-- Device: Altera EP3C55F484I7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	jishuqi IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	en : IN std_logic;
	load : IN std_logic;
	cout : BUFFER std_logic;
	data : IN std_logic_vector(3 DOWNTO 0);
	q1 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END jishuqi;

-- Design Ports Information
-- cout	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF jishuqi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \q1[0]~output_o\ : std_logic;
SIGNAL \q1[1]~output_o\ : std_logic;
SIGNAL \q1[2]~output_o\ : std_logic;
SIGNAL \q1[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \q1~5_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \q1[1]~reg0_q\ : std_logic;
SIGNAL \q1~3_combout\ : std_logic;
SIGNAL \q1~4_combout\ : std_logic;
SIGNAL \q1[2]~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \q1~2_combout\ : std_logic;
SIGNAL \q1[3]~reg0_q\ : std_logic;
SIGNAL \q1[0]~0_combout\ : std_logic;
SIGNAL \q1~1_combout\ : std_logic;
SIGNAL \q1[0]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_en <= en;
ww_load <= load;
cout <= ww_cout;
ww_data <= data;
q1 <= ww_q1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

-- Location: IOOBUF_X0_Y45_N2
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X0_Y43_N2
\q1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q1[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\q1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q1[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N9
\q1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q1[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\q1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q1[3]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y45_N22
\load~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X1_Y45_N8
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \q1[1]~reg0_q\ $ (\q1[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q1[1]~reg0_q\,
	datad => \q1[0]~reg0_q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y45_N30
\q1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q1~5_combout\ = (\load~input_o\ & (((\Add0~1_combout\ & !\q1[0]~0_combout\)))) # (!\load~input_o\ & (\data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \data[1]~input_o\,
	datac => \Add0~1_combout\,
	datad => \q1[0]~0_combout\,
	combout => \q1~5_combout\);

-- Location: IOIBUF_X0_Y26_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y44_N8
\en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: FF_X1_Y45_N31
\q1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1~5_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1[1]~reg0_q\);

-- Location: LCCOMB_X1_Y45_N2
\q1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q1~3_combout\ = (\load~input_o\ & (((!\q1[0]~reg0_q\) # (!\q1[1]~reg0_q\)))) # (!\load~input_o\ & (\data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \data[2]~input_o\,
	datac => \q1[1]~reg0_q\,
	datad => \q1[0]~reg0_q\,
	combout => \q1~3_combout\);

-- Location: LCCOMB_X1_Y45_N28
\q1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q1~4_combout\ = (\load~input_o\ & (!\q1[3]~reg0_q\ & (\q1[2]~reg0_q\ $ (!\q1~3_combout\)))) # (!\load~input_o\ & (((\q1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \q1[3]~reg0_q\,
	datac => \q1[2]~reg0_q\,
	datad => \q1~3_combout\,
	combout => \q1~4_combout\);

-- Location: FF_X1_Y45_N29
\q1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1[2]~reg0_q\);

-- Location: LCCOMB_X1_Y45_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \q1[3]~reg0_q\ $ (((\q1[2]~reg0_q\ & (\q1[0]~reg0_q\ & \q1[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[2]~reg0_q\,
	datab => \q1[0]~reg0_q\,
	datac => \q1[1]~reg0_q\,
	datad => \q1[3]~reg0_q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y45_N26
\q1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q1~2_combout\ = (\load~input_o\ & (((\Add0~0_combout\ & !\q1[0]~0_combout\)))) # (!\load~input_o\ & (\data[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \data[3]~input_o\,
	datac => \Add0~0_combout\,
	datad => \q1[0]~0_combout\,
	combout => \q1~2_combout\);

-- Location: FF_X1_Y45_N27
\q1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1[3]~reg0_q\);

-- Location: LCCOMB_X1_Y45_N10
\q1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q1[0]~0_combout\ = (\q1[3]~reg0_q\ & ((\q1[2]~reg0_q\) # ((\q1[1]~reg0_q\) # (\q1[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[3]~reg0_q\,
	datab => \q1[2]~reg0_q\,
	datac => \q1[1]~reg0_q\,
	datad => \q1[0]~reg0_q\,
	combout => \q1[0]~0_combout\);

-- Location: LCCOMB_X1_Y45_N24
\q1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q1~1_combout\ = (\load~input_o\ & (((!\q1[0]~reg0_q\ & !\q1[0]~0_combout\)))) # (!\load~input_o\ & (\data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \data[0]~input_o\,
	datac => \q1[0]~reg0_q\,
	datad => \q1[0]~0_combout\,
	combout => \q1~1_combout\);

-- Location: FF_X1_Y45_N25
\q1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q1~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q1[0]~reg0_q\);

-- Location: LCCOMB_X1_Y45_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\q1[0]~reg0_q\ & (!\q1[2]~reg0_q\ & (!\q1[1]~reg0_q\ & \q1[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1[0]~reg0_q\,
	datab => \q1[2]~reg0_q\,
	datac => \q1[1]~reg0_q\,
	datad => \q1[3]~reg0_q\,
	combout => \Equal0~0_combout\);

ww_cout <= \cout~output_o\;

ww_q1(0) <= \q1[0]~output_o\;

ww_q1(1) <= \q1[1]~output_o\;

ww_q1(2) <= \q1[2]~output_o\;

ww_q1(3) <= \q1[3]~output_o\;
END structure;


