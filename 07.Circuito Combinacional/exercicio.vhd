--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------
-- Entidade
--------------------------------------
entity exercicio is
    port( B  : in  std_logic_vector(7 downto 0);    
          D  : in  std_logic_vector(3 downto 0);   
          BB : out std_logic_vector(7 downto 0) 
        );
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture exercicio of exercicio is
    signal sd : std_logic_vector(1 downto 0);    -- saída do decoder
begin

	sd <= "11" when D(3)='1' else 
          "10" when D(2)='1' else 
          "01" when D(1)='1' else 
          "00";
	
	BB <= B(3 downto 0) & B(7 downto 4) when sd="00" else 
          "1111" & B(7 downto 4)        when sd="01" else
          '0' & B(7 downto 1)           when sd="10" else 
          B(6 downto 0) & '0';
	
end architecture;