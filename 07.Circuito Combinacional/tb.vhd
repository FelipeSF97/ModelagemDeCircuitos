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
	signal D : std_logic_vector(3 downto 0);
	signal S: std_logic_vector(7 downto 0);
	signal mode, cout, ov: std_logic;
begin

	A <= x"45", x"54" after 80 ns;
	B <= x"1F", x"38" after 80 ns;
    mode <= '0', '1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
	D <= x"1", x"2" after 10 ns, x"4" after 20 ns, x"8" after 30 ns, x"1" after 40 ns, x"2" after 50 ns, x"4" after 60 ns, x"8" after 70 ns, x"1" after 80 ns, x"2" after 90 ns, x"4" after 100 ns, x"8" after 110 ns, x"1" after 120 ns, x"2" after 130 ns, x"4" after 140 ns, x"8" after 150 ns;

	DUT: entity work.top
	     port map(A => A, B => B, mode => mode, D => D, S => S, cout => cout, ov => ov);

end architecture;
