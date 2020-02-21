----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2020 16:29:58
-- Design Name: 
-- Module Name: Basketball_Video_Game - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Basketball_Video_Game is
    Port ( clk      : in  STD_LOGIC;
           Hsync    : out STD_LOGIC;
           Vsync    : out STD_LOGIC;
           vgaRed   : out STD_LOGIC_VECTOR(3 downto 0);
           vgaBlue  : out STD_LOGIC_VECTOR(3 downto 0);
           vgaGreen : out STD_LOGIC_VECTOR(3 downto 0);
           vgaOut   : out STD_LOGIC_VECTOR (11 downto 0));
end Basketball_Video_Game;

architecture Behavioral of Basketball_Video_Game is


SIGNAL pixel_clk_line : STD_LOGIC;
SIGNAL Blank_Sig      : STD_LOGIC;
SIGNAL Human_Mask, Basket_Mask : STD_LOGIC := '0';--, objectMask  : STD_LOGIC := '0'; -- signal for mask 
SIGNAL H_Sig, V_Sig : UNSIGNED(10 downto 0);
--SIGNAL Basket_R_Sig, Basket_B_Sig, Basket_G_Sig : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL Human_R_Sig,  Human_B_Sig,  Human_G_Sig  : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL objectRed,    objectGreen,  objectBlue   : STD_LOGIC_VECTOR (3 downto 0);

begin

    Pixel_Clock : ENTITY work.Pixel_Clock(Behavioral) GENERIC MAP(modulo => 4)
    PORT MAP (
                clk => clk,
                pixel_clock => pixel_clk_line);

    VGA_Controller : ENTITY work.vga_controller_640_60(Behavioral)
    PORT MAP (
                rst         => '0',
                pixel_clk   => pixel_clk_line,
                HS          => Hsync,
                VS          => Vsync,
                hcount      => H_Sig,
                vcount      => V_Sig,
                blank       => Blank_Sig);       

--   Basket : ENTITY work.Game_Objects(Behavioral) 
--   GENERIC MAP( 
--            RED         => "0000",
--            BLUE        => "1111",
--            GREEN       => "0000",
--            LEFT_POS_X  => 13,
--            RIGHT_POS_X => 47,
--            HIGH_Y      => 395,
--            LOW_Y       => 405)
--    port map( 
--            X => H_Sig,
--            Y => V_Sig,
--            R => Basket_R_Sig,
--            G => Basket_G_Sig,       
--            B => Basket_B_Sig,
--            MASK => Basket_Mask);
   
   Human : ENTITY work.Game_Objects(Behavioral) 
   GENERIC MAP( 
            RED         => "0000",
            BLUE        => "0000",
            GREEN       => "1111",
            LEFT_POS_X  => 510,
            RIGHT_POS_X => 520,
            HIGH_Y      => 390,
            LOW_Y       => 450)
    port map( 
            X => H_Sig,
            Y => V_Sig,
            R => Human_R_Sig,
            G => Human_G_Sig,       
            B => Human_B_Sig,
            MASK => Human_Mask);
   
   --objectMask  <= Human_Mask --or Basket_Mask;             
   objectRed   <= Human_R_Sig; --or Basket_R_Sig;             
   objectGreen <= Human_G_Sig; --or Basket_G_Sig;
   objectBlue  <= Human_B_Sig; --or Basket_B_Sig;      
   vgaRed      <= objectRed;  -- when objectMask = '1' --else BasketballRed;
   vgaGreen    <= objectGreen; --when objectMask = '1' --else BasketballGreen; 
   vgaBlue     <= objectBlue;  --when objectMask = '1' --else BasketballBlue;
    
end Behavioral;
