--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------
-- Entidade
--------------------------------------
entity tb is
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture tb of tb is
  signal E : std_logic_vector(1 downto 0);
  signal S : std_logic_vector(4 downto 0);
begin

  E <= "00", "01" after 10 ns, "00" after 20 ns, "10" after 30 ns, "00" after 40 ns, "01" after 50 ns, "00" after 60 ns, "11" after 70 ns;

  DUT: entity work.ex2
	   port map(E => E, S => S);

end architecture;
