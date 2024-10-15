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
	signal A, B : std_logic_vector(3 downto 0);
	signal S: std_logic_vector(3 downto 0);
	signal mode, cout, ov: std_logic;
begin

	A <= x"4", x"B" after 20 ns, x"7" after 40 ns, x"8" after 60 ns;
	B <= x"6", x"F" after 20 ns, x"C" after 40 ns, x"8" after 60 ns;
    mode <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns;

	DUT: entity work.soma_sub4
	     port map(A => A, B => B, mode => mode, S => S, cout => cout, ov => ov);

end architecture;
