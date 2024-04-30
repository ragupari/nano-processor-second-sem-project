----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/09/2022 10:42:11 PM
-- Design Name: 
-- Module Name: TB_Add_Sub - Behavioral
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

entity TB_Add_Sub is
--  Port ( );
end TB_Add_Sub;

architecture Behavioral of TB_Add_Sub is
component Add_Sub
     Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Ctrl : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Z_out : out STD_LOGIC;
           C_out : out STD_LOGIC
           );
end component;
signal Ctrl,Overflow,c_out,z_out : STD_LOGIC;
signal a,b,s : STD_LOGIC_VECTOR (3 downto 0);
begin
UUT: Add_Sub
    PORT MAP (
         A => a,
         B => b,
         S => s,
         Ctrl =>Ctrl,
         Overflow =>Overflow,
         C_out => c_out,
         Z_out => z_out
    );
    process
            begin 
                --- 200307C - 0b 0011 0000 1110 0111 0011
                --- 200592R - 0b 0011 0000 1111 1001 0000
                --- 200583P - 0b 0011 0000 1111 1000 0111
                --- 200441F - 0b 0011 0000 1110 1111 1001
                --- 200432E - 0b 0011 0000 1110 1111 0000
                
                Ctrl <='1';
                A <= "0111"; -- 7
                B <= "0011"; -- 3
                wait for 100ns;
                Ctrl <= '0';
                A <= "1111"; -- -1
                B <= "1001"; -- -7
                wait for 100ns;
                Ctrl <= '1';
                A <= "1000"; -- -8
                B <= "0111"; -- 7
                wait for 100ns;
                Ctrl <='0';
                A <= "1110"; -- -2
                B <= "1001"; -- -7
                wait for 100ns;
                Ctrl <= '1';
                A <= "0000"; -- 0
                B <= "1111"; -- -1
                wait;
            end process;
    

end Behavioral;