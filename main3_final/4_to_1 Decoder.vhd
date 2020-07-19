---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2020 13:44:21
-- Design Name: 
-- Module Name: seven_segment_decoder - Behavioral
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
---------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seven_segment_decoder is
    PORT ( 
           BCDin         : in  STD_LOGIC_VECTOR(3 downto 0);
           Seven_Segment : out STD_LOGIC_VECTOR(6 downto 0));
END seven_segment_decoder;

ARCHITECTURE Behavioral of seven_segment_decoder is

begin

    process(BCDin)

    begin

    -- Convert number to segment display dependant on input
    case BCDin is
        when "0000" =>
        Seven_Segment <= "1000000"; ---0
        when "0001" =>
        Seven_Segment <= "1111001"; ---1
        when "0010" =>
        Seven_Segment <= "0100100"; ---2
        when "0011" =>
        Seven_Segment <= "0110000"; ---3
        when "0100" =>
        Seven_Segment <= "0011001"; ---4
        when "0101" =>
        Seven_Segment <= "0010010"; ---5
        when "0110" =>
        Seven_Segment <= "0000010"; ---6
        when "0111" =>
        Seven_Segment <= "1011000"; ---7
        when "1000" =>
        Seven_Segment <= "0000000"; ---8
        when "1001" =>
        Seven_Segment <= "0011000"; ---9
        when others =>
        Seven_Segment <= "1000000"; ---null
    end case;

    end process;

END Behavioral;