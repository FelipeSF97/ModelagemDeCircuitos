--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity tb is
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture tb of tb is
	signal A, B : std_logic_vector(7 downto 0);
	signal S: std_logic_vector(7 downto 0);
	signal mode, cout, ov: std_logic;
begin

	A <= x"45", x"54" after 20 ns;
	B <= x"1F", x"38" after 20 ns;
    mode <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;

	DUT: entity work.soma_sub8
	     port map(A => A, B => B, mode => mode, S => S, cout => cout, ov => ov);

end architecture;
