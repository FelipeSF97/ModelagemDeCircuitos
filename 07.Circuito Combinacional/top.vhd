--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity top is
	port (A, B: in std_logic_vector(7 downto 0);
		  D: in std_logic_vector(3 downto 0);
		  mode: in std_logic;
		  S: out std_logic_vector(7 downto 0);
		  cout, ov: out std_logic );
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture top of top is
	signal BB: std_logic_vector(7 downto 0);
begin

	cc: entity work.exercicio
		port map(B => B, D => D, BB => BB);

	sb8: entity work.soma_sub8
		port map (A => A, B => BB, mode => mode, S => S, cout => cout, ov => ov);
end architecture;