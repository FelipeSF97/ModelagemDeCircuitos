--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity soma_sub8 is
	port (A, B: in std_logic_vector(7 downto 0);
		  mode: in std_logic;
		  S: out std_logic_vector(7 downto 0);
		  Cout, ov: out std_logic );
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture soma_sub4 of soma_sub8 is
	signal c: std_logic_vector(8 downto 0);
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
	ss5 : entity work.soma_sub
		  port map (A => A(4), B => B(4), Cin => c(4), Soma => S(4), Cout => c(5), m => mode);
	ss6 : entity work.soma_sub
		  port map (A => A(5), B => B(5), Cin => c(5), Soma => S(5), Cout => c(6), m => mode);
	ss7 : entity work.soma_sub
		  port map (A => A(6), B => B(6), Cin => c(6), Soma => S(6), Cout => c(7), m => mode);
	ss8 : entity work.soma_sub
		  port map (A => A(7), B => B(7), Cin => c(7), Soma => S(7), Cout => c(8), m => mode);
	cout <= c(8);
	ov <= c(8) xor c(7);

end architecture;