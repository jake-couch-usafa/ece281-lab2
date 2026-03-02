----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2026 10:38:14 AM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: binaryHexDisp
-- Target Devices: Basys3
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is
    component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component sevenseg_decoder;

signal w_i_Hex         : std_logic_vector(3 downto 0) := x"0";
signal w_o_seg_n         : std_logic_vector(6 downto 0) := "0000000";

begin
-- PORT MAPS ----------------------------------------
	sevenseg_decoder_uut : sevenseg_decoder port map (
	   i_Hex    => w_i_Hex,
	   o_seg_n    => w_o_seg_n
	);

-- PROCESSES ----------------------------------------
	
	-- Test Plan Process --------------------------------
	-- Implement the test plan here.  Body of process is continuously from time = 0  
	test_process : process 
	begin
        w_i_Hex <= x"0"; wait for 10 ns;
            assert w_o_seg_n = "1111111" report "0 failed" severity error;
        w_i_Hex <= x"1"; wait for 10 ns;
            assert w_o_seg_n = "1111001" report "1 failed" severity error;
        w_i_Hex <= x"2"; wait for 10 ns;
            assert w_o_seg_n = "0100100" report "2 failed" severity error;
        w_i_Hex <= x"3"; wait for 10 ns;
            assert w_o_seg_n = "0110000" report "3 failed" severity error;
        w_i_Hex <= x"4"; wait for 10 ns;
            assert w_o_seg_n = "0011001" report "4 failed" severity error;
        w_i_Hex <= x"5"; wait for 10 ns;
            assert w_o_seg_n = "0010010" report "5 failed" severity error;
        w_i_Hex <= x"6"; wait for 10 ns;
            assert w_o_seg_n = "0000010" report "6 failed" severity error;
        w_i_Hex <= x"7"; wait for 10 ns;
            assert w_o_seg_n = "1111000" report "7 failed" severity error;
        w_i_Hex <= x"8"; wait for 10 ns;
            assert w_o_seg_n = "0000000" report "8 failed" severity error;
        w_i_Hex <= x"9"; wait for 10 ns;
            assert w_o_seg_n = "0010000" report "9 failed" severity error;
        w_i_Hex <= x"A"; wait for 10 ns;
            assert w_o_seg_n = "0001000" report "A failed" severity error;
        w_i_Hex <= x"B"; wait for 10 ns;
            assert w_o_seg_n = "0000011" report "B failed" severity error;
        w_i_Hex <= x"C"; wait for 10 ns;
            assert w_o_seg_n = "1000110" report "C failed" severity error;
        w_i_Hex <= x"D"; wait for 10 ns;
            assert w_o_seg_n = "0100001" report "D failed" severity error;
        w_i_Hex <= x"E"; wait for 10 ns;
            assert w_o_seg_n = "0000110" report "E failed" severity error;
        w_i_Hex <= x"F"; wait for 10 ns;
            assert w_o_seg_n = "0001110" report "F failed" severity error;
        wait; -- wait forever
	end process;	
	-----------------------------------------------------	
end test_bench;