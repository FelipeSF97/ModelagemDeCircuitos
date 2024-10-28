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

  signal B, BB : std_logic_vector(7 downto 0);
  signal D  :  std_logic_vector(3 downto 0);

  type test_record is record
    b :  std_logic_vector(7 downto 0);
  end record;

  type padroes is array(natural range <>) of test_record;

  constant padrao_de_teste : padroes := (
    ( b => x"1F"),
    ( b => x"38"),
    ( b => x"0F"),
    ( b => x"E5")
  );

begin

  DUT: entity work.ex3
	   port map(B => B, D => D, BB => BB);   
   
  TEST: process
  begin
    for op in 0 to 3 loop
      for i in 0 to padrao_de_teste'high loop
        B <= padrao_de_teste(i).b;
        case op is
          when 0  =>      D<="0001";
          when 1  =>      D<="0010";
          when 2  =>      D<="0100";
          when others =>  D<="1000";
        end case;
        wait for 10 ns;
      end loop;
    end loop;     
  end process;

end architecture;