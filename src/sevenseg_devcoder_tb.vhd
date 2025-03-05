----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 09:23:02 AM
-- Design Name: 
-- Module Name: sevenseg_devcoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
 use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
    --Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           --o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder is
        Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
               o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;
    
    signal i_Hex_tb  : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal o_seg_tb  : STD_LOGIC_VECTOR (6 downto 0);
    
begin

        UUT : sevenseg_decoder
        port map (
            i_Hex  => i_Hex_tb,
            o_seg_n => o_seg_tb
        );
        
        test_process: process
        begin
        
        i_Hex_tb <= x"0"; wait for 10 ns;
            assert o_seg_tb = "1000000" report "error displaying 0" severity failure;
        i_Hex_tb <= x"1"; wait for 10 ns;
            assert o_seg_tb = "1111001" report "error displaying 1" severity failure;
        i_Hex_tb <= x"2"; wait for 10 ns;
            assert o_seg_tb = "0100100" report "error displaying 2" severity failure;
        i_Hex_tb <= x"3"; wait for 10 ns;
            assert o_seg_tb = "0110000" report "error displaying 3" severity failure;
        i_Hex_tb <= x"4"; wait for 10 ns;
            assert o_seg_tb = "0011001" report "error displaying 4" severity failure;
        i_Hex_tb <= x"5"; wait for 10 ns;
            assert o_seg_tb = "0010010" report "error displaying 5" severity failure;
        i_Hex_tb <= x"6"; wait for 10 ns;
            assert o_seg_tb = "0000010" report "error displaying 6" severity failure;
        i_Hex_tb <= x"7"; wait for 10 ns;
            assert o_seg_tb = "1111000" report "error displaying 7" severity failure;
        i_Hex_tb <= x"8"; wait for 10 ns;
            assert o_seg_tb = "0000000" report "error displaying 8" severity failure;
        i_Hex_tb <= x"9"; wait for 10 ns;
            assert o_seg_tb = "0011000" report "error displaying 9" severity failure;
        i_Hex_tb <= x"A"; wait for 10 ns;
            assert o_seg_tb = "0001000" report "error displaying A" severity failure;
        i_Hex_tb <= x"B"; wait for 10 ns;
            assert o_seg_tb = "0000011" report "error displaying B" severity failure;
        i_Hex_tb <= x"C"; wait for 10 ns;
            assert o_seg_tb = "0100111" report "error displaying C" severity failure;
        i_Hex_tb <= x"D"; wait for 10 ns;
            assert o_seg_tb = "0100001" report "error displaying D" severity failure;
        i_Hex_tb <= x"E"; wait for 10 ns;
            assert o_seg_tb = "0000110" report "error displaying E" severity failure;
        i_Hex_tb <= x"F"; wait for 10 ns;
            assert o_seg_tb = "0001110" report "error displaying F" severity failure;
        wait;
    end process;
    
end Behavioral;