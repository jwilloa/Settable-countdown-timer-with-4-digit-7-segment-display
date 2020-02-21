------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date: 20.02.2020 15:44:35
---- Design Name: 
---- Module Name: Basketball - Behavioral
---- Project Name: 
---- Target Devices: 
---- Tool Versions: 
---- Description: 
---- 
---- Dependencies: 
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
---- 
------------------------------------------------------------------------------------


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity Basketball is
----  Port ( );
--end Basketball;

--architecture Behavioral of Basketball is

--begin


--end Behavioral;


--entity Basketball is
--generic (
--            CX     : NATURAL := 320;
--            CY     : NATURAL := 240;
--            R      : NATURAL := 100;
--            COLOUR : STD_LOGIC_VECTOR(11 downto 0) := "001111000011" );
--port (
--            PIXEL_CK : in STD_LOGIC;
--            X, Y: in UNSIGNED (10 downto 0);
--            RGB : out STD_LOGIC_VECTOR(11 downto 0);
--            MASK : out STD_LOGIC );
--end Basketball;

--architecture Behavioral of Basketball is

--SIGNAL DX, DY   : UNSIGNED (X'range);
--SIGNAL DX2,
-- DY2 : UNSIGNED ((2*X'high+1) downto 0);
--SIGNAL FLAG     : STD_LOGIC;
--CONSTANT R2     : UNSIGNED(DX2'range)
-- := TO_UNSIGNED(R * R, DX2'length);

--begin
--    DX <= X - CX when X > CX else CX - X;
--    DY <= Y - CY when Y > CY else CY - Y;
--    DX2 <= DX * DX;
--    DY2 <= DY * DY;
--    FLAG <= '1' when (DX2 + DY2 < R2) else '0';
--    RGB  <= COLOUR when FLAG = '1'
--    else (OTHERS => '0');
--        MASK <= FLAG;
--end Behavioral;
