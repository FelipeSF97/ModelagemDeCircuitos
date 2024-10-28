--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------
-- Entidade
--------------------------------------
entity ex2 is
  port(E: in std_logic_vector (1 downto 0);
       S: out std_logic_vector(4 downto 0) );
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture ex2 of ex2 is
begin
  S <= "00001" when E = "00" else 
       "00110" when E = "01" else
       "11000" when E = "10" else
       "11111" --when E = "11"
       ;

end architecture;