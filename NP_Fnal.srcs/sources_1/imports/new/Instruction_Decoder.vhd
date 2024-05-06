
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Instruction_Decoder is
    Port ( I : in STD_LOGIC_VECTOR (12 downto 0);
           Reg_Check_Jump : in STD_LOGIC_VECTOR (3 downto 0);
           Load_Select : out STD_LOGIC;
           Imm_Value : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_Enable : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Select_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_Select_2 : out STD_LOGIC_VECTOR (2 downto 0);
           Add_Sub : out STD_LOGIC;
           Jump_Flag : out STD_LOGIC;
           Address : out STD_LOGIC_VECTOR (2 downto 0);
           Mul: out STD_LOGIC
           );
end Instruction_Decoder;

architecture Behavioral of Instruction_Decoder is

component Mux_2_to_1_3bit
    Port ( Sel : in STD_LOGIC;
           D0 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal Ins : STD_LOGIC_VECTOR (2 downto 0);
signal RegA : STD_LOGIC_VECTOR (2 downto 0);
signal RegB : STD_LOGIC_VECTOR (2 downto 0);
signal Data : STD_LOGIC_VECTOR (3 downto 0);
signal Sel: STD_LOGIC;

begin
Ins <= I(12 downto 10);
RegA <= I(9 downto 7);
RegB <= I(6 downto 4);
  

with Ins select Reg_select_1<=
        "000" when "101",
        RegA when others;
with Ins select Reg_select_2<=
        RegA when "101",
        RegB when others;
             
             
Data <= I(3 downto 0);

Sel <= NOT(Ins(1)) AND Ins(0);
Load_Select <= Ins(1) AND NOT (Ins(0)) ;
Add_Sub <= Ins(0);

Jump_Flag <= Ins(1) AND Ins(0) AND NOT( Reg_Check_Jump(3) OR Reg_Check_Jump(2) OR Reg_Check_Jump(1)OR Reg_Check_Jump(0));
Reg_Enable <= RegA;
Imm_Value <= Data;
Address <= Data(2 downto 0);
Mul <= Ins(2) and not(Ins(0)) and not(Ins(1));

end Behavioral;
