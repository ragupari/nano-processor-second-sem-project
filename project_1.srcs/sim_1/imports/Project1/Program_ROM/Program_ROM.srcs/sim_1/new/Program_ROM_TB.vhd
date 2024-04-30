----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/10/2022 11:22:21 AM
-- Design Name: 
-- Module Name: Program_ROM_TB - Behavioral
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

entity Program_ROM_TB is
--  Port ( );
end Program_ROM_TB;

architecture Behavioral of Program_ROM_TB is
component Program_ROM
    Port ( Mem_Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Ins_Bus : out STD_LOGIC_VECTOR (11 downto 0));
end component;
signal Mem_Sel :STD_LOGIC_VECTOR (2 downto 0);
signal Ins_Bus : STD_LOGIC_VECTOR (11 downto 0);
begin
UUT: Program_ROM
    PORT MAP(
        Mem_Sel => Mem_Sel,
        Ins_Bus => Ins_Bus
    );

process
begin 
    Mem_Sel <= "000";
    wait for 100 ns;
    Mem_Sel <= "001";
    wait for 100 ns;
    Mem_Sel <= "010";
    wait for 100 ns;
    Mem_Sel <= "011";
    wait for 100 ns;
    Mem_Sel <= "100";
    wait for 100 ns;
    Mem_Sel <= "101";
    wait for 100 ns;
    Mem_Sel <= "110";
    wait for 100 ns;
    Mem_Sel <= "111";
    wait for 100 ns;
end process;
end Behavioral;
