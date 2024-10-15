library IEEE;
use IEEE.std_logic_1164.all;

entity tb is
end entity;

architecture tb of tb is
	signal in_A, in_B, in_Cin : std_logic;
	signal out_Cout, out_S : std_logic;
begin

	in_A <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns, '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns;
	
	in_B <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
	
	in_Cin <= '0', '1' after 40 ns;

	DUT: entity work.soma_sub
	     port map(A => in_A, B => in_B, m => in_Cin, Cin => in_Cin, Cout => out_Cout, Soma => out_S);

end architecture;
