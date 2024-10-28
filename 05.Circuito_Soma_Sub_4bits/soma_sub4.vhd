--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity soma_sub4 is
	port (A, B: in std_logic_vector(3 downto 0);
		  mode: in std_logic;
		  S: out std_logic_vector(3 downto 0);
		  Cout, ov: out std_logic );
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture soma_sub4 of soma_sub4 is
	signal c: std_logic_vector(4 downto 0);
begin

	c(0) <= mode;
    ss1 : entity work.soma_sub
		  port map (A => A(0), B => B(0), Cin => c(0), Soma => S(0), Cout => c(1), m => mode);
	ss2 : entity work.soma_sub
		  port map (A => A(1), B => B(1), Cin => c(1), Soma => S(1), Cout => c(2), m => mode);
	ss3 : entity work.soma_sub
		  port map (A => A(2), B => B(2), Cin => c(2), Soma => S(2), Cout => c(3), m => mode);
	ss4 : entity work.soma_sub
		  port map (A => A(3), B => B(3), Cin => c(3), Soma => S(3), Cout => c(4), m => mode);
	cout <= c(4);
	ov <= c(4) xor c(3);

end architecture;