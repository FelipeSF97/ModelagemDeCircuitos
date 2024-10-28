--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity soma4 is
	port (a, b: in std_logic_vector(3 downto 0);
		  s: out std_logic_vector(3 downto 0);
	      cout, ov: out std_logic);
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture soma4 of soma4 is
	signal vai_um : std_logic_vector(3 downto 0);
begin

	fa1: entity work.full_adder
		 port map (A => a(0), B => b(0), Cin => '0', Cout => vai_um(0), Soma => s(0));

	fa2: entity work.full_adder
	 	 port map (A => a(1), B => b(1), Cin => vai_um(0), Cout => vai_um(1), Soma => s(1));
		 
	fa3: entity work.full_adder
		 port map (A => a(2), B => b(2), Cin => vai_um(1), Cout => vai_um(2), Soma => s(2));
		 
	fa4: entity work.full_adder
	 	 port map (A => a(3), B => b(3), Cin => vai_um(2), Cout => vai_um(3), Soma => s(3));
		 
	cout <= vai_um(3);
	
	ov <= vai_um(3) xor vai_um(2);

end architecture;