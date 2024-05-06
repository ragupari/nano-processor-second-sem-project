library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity TB_Multiplier_2 is 
end TB_Multiplier_2; 

architecture Behavioral of TB_Multiplier_2 is 

component Multiplier_2 is 
Port (  A : in STD_LOGIC_VECTOR (1 downto 0); 
        B : in STD_LOGIC_VECTOR (1 downto 0); 
        Y : out STD_LOGIC_VECTOR (3 downto 0)); 
end component; 

SIGNAL A,B:STD_LOGIC_VECTOR (1 downto 0); 
SIGNAL Y :STD_LOGIC_VECTOR (3 downto 0); 

begin 

UUT:Multiplier_2 PORT MAP(A,B,Y); 

process 
begin
                --- 220444K - 0b 11 01 01 11 01 00 01 11 00
                --- 220297K - 0b 11 01 01 11 00 10 00 10 01
                --- 220625R - 0b 11 01 01 11 01 11 01 00 01
                --- 220671D - 0b 11 01 01 11 01 11 11 11 11
                
A <= "11"; 
B <= "00"; 
WAIT FOR 100 ns; 
A <= "10"; 
B <= "01"; 
WAIT FOR 100ns; 
A <= "00"; 
B <= "01"; 
WAIT FOR 100ns; 
A <= "11"; 
B <= "11"; 
WAIT FOR 100ns; 

end process; 
end Behavioral;