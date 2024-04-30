----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 12:42:15 AM
-- Design Name: 
-- Module Name: TB_2_to_1_Mux_3bit - Behavioral
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

entity TB_Mux_2_to_1_3bit is
--  Port ( );
end TB_Mux_2_to_1_3bit;

architecture Behavioral of TB_Mux_2_to_1_3bit is
component Mux_2_to_1_3bit 
    Port ( Sel : in STD_LOGIC;
           D0 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal Sel : STD_LOGIC;
signal D0 : STD_LOGIC_VECTOR (2 downto 0);
signal D1 : STD_LOGIC_VECTOR (2 downto 0);
signal Y : STD_LOGIC_VECTOR (2 downto 0);
begin
UUT: Mux_2_to_1_3bit 
      port map (
           Sel=>Sel,
           D0=>D0,
           D1=>D1,
           Y=>Y   );
--- 200307C - 0b  110 000 111 001 110 011
--- 200592R - 0b  110 000 111 110 010 000
--- 200583P - 0b  110 000 111 110 000 111
--- 200441F - 0b  110 000 111 011 111 001
--- 200432E - 0b  110 000 111 011 110 000
           
     process
     begin
          D0 <= "011";
          D1 <= "101";
          Sel <= '1';
               
          wait for 50ns;
          Sel <= '0';
               
          wait for 50ns;
          D0 <= "111";
          D1 <= "001";
          Sel <= '1';
          
          wait for 50ns;
          Sel <= '0';
          
          wait for 50ns;
          D0 <= "110";
          D1 <= "011";
          Sel <= '1';
            
          wait for 50ns;
          Sel <= '0';
          wait;
     end process;

end Behavioral;
