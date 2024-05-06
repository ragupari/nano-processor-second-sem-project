
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all; 


entity Program_ROM is
    Port ( Mem_Sel : in STD_LOGIC_VECTOR (2 downto 0);
           Ins_Bus : out STD_LOGIC_VECTOR (12 downto 0));
end Program_ROM;

architecture Behavioral of Program_ROM is
type rom_type is array (0 to 7) of STD_LOGIC_VECTOR(12 downto 0);   
    signal sevenSegment_ROM : rom_type := (
    "0100100000011",-- Mov R2, 3
    "0101110000010",-- Mov R7, 2
    "0011110100000",-- Sub R7,R2
    "1011110000000",-- Neg R7
    "0100110000010",-- Mov R3, 2
    "0001110110000",-- Add R7, R3
    "1001110110000",-- Mul R7, R3
    "0110000000001"-- JMZ( check R0 )
    );
begin
Ins_Bus <= sevenSegment_ROM(to_integer(unsigned(Mem_Sel)));
end Behavioral;
