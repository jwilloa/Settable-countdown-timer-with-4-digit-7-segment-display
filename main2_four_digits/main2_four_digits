----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.02.2020 17:17:00
-- Design Name:
-- Module Name: main2_four_digits - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main2_four_digits is
    Port (
           sw  : in STD_LOGIC_VECTOR(15 downto 0);
           clk : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an  : out STD_LOGIC_VECTOR (3 downto 0));
end main2_four_digits;

architecture Behavioral of main2_four_digits is

SIGNAL clock_line   : STD_LOGIC;
SIGNAL clock_line2  : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL D_Mux        : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiating two_bit_Counter, anode_decoder, multiplexer & BCD_decoder
    two_bit_counter: ENTITY work.two_bit_counter(Behavioral)
    PORT MAP(
             clock   => clock_line,
             reset   => '0',
             cnt_out => clock_line2);

    anode_decoder: ENTITY work.anode_decoder(Behavioral)
    PORT MAP(
             counter => clock_line2,
             anode   => an);

    clock_divider: ENTITY work.clock_divider(Behavioral)
         PORT MAP(
                  clk_in    => clk,
                  clock_out => clock_line);

    multiplexer: ENTITY work.four_to_one_mux(Behavioral)
    PORT MAP(
             X => clock_line2,
             A => sw(3 downto 0),
             B => sw(7 downto 4),
             C => sw(11 downto 8),
             D => sw(15 downto 12),
             Z => D_Mux);

    decode_digit: ENTITY work.seven_segment_decoder(Behavioral)
    PORT MAP(
             BCDin         => D_Mux,
             Seven_Segment => seg);

END Behavioral;
