--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------
-- Entidade
--------------------------------------
entity full_adder is
	port (A, B, Cin: in std_logic;
	      Cout, Soma: out std_logic);
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture full_adder of full_adder is
begin

	Cout <= (A and B) or (A and Cin) or (B and Cin);
	
	Soma <= A xor B xor Cin;
	
end architecture;