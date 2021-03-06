----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.01.2020 13:54:43
-- Design Name: 
-- Module Name: four_digits - Behavioral
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


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY four_digits is
  PORT (   
         D0  : in STD_LOGIC_VECTOR (3 downto 0); 
         D1  : in STD_LOGIC_VECTOR (3 downto 0);
         D2  : in STD_LOGIC_VECTOR (3 downto 0);
         D3  : in STD_LOGIC_VECTOR (3 downto 0);
         ck  : in  STD_LOGIC; 
         seg : out STD_LOGIC_VECTOR (6 downto 0);
         an  : out STD_LOGIC_VECTOR (3 downto 0);
         dp  : out STD_LOGIC
         );
END four_digits;

ARCHITECTURE Behavioral of four_digits is

SIGNAL clock_line : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL D_Mux      : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Show decimal point to break the minutes and seconds digits
    with clock_line select
    dp <=   '0' when "10",
            '1' when others;

    -- Instantiating two_bit_Counter, anode_decoder, multiplexer & BCD_decoder
    two_bit_counter: ENTITY work.two_bit_counter(Behavioral)
    PORT MAP(clock => ck, reset => '0', cnt_out => clock_line);

    anode_decoder: ENTITY work.display_anode_select(Behavioral)
    PORT MAP(counter => clock_line, anode => an);

    multiplexer: ENTITY work.four_to_one_multiplexer(Behavioral)
    PORT MAP(X => clock_line, A => D0, B => D1, C => D2, D => D3, Z => D_Mux); --X => clock_line

    decode_digit: ENTITY work.seven_segment_decoder(Behavioral)
    PORT MAP(BCDin => D_Mux, Seven_Segment => seg); -- BCDin => sw(15 downto 0) -- D_Mux



END Behavioral;