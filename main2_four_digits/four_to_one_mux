----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 06.02.2020 17:21:45
-- Design Name:
-- Module Name: four_to_one_mux - Behavioral
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

entity four_to_one_mux is
    Port ( A, B, C, D : in STD_LOGIC_VECTOR (3 downto 0);
           X : in STD_LOGIC_VECTOR (1 downto 0);
           Z : out STD_LOGIC_VECTOR (3 downto 0));
end four_to_one_mux;

architecture Behavioral of four_to_one_mux is

begin

    process (X ,A, B, C, D)

    begin

        case X is
            when "00" => Z <= A;
            when "01" => Z <= B;
            when "10" => Z <= C;
            when "11" => Z <= D;
        end case;

    end process;
END Behavioral;

