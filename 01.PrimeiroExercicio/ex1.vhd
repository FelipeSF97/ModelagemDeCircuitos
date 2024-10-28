--------------------------------------
-- Biblioteca
--------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--------------------------------------
-- Entidade
--------------------------------------
entity ex1 is
    port( A, B , C: in std_logic;
          D, E, F: out std_logic );
end entity;

--------------------------------------
-- Arquitetura
--------------------------------------
architecture ex1 of ex1 is
    signal G, H, I, J : std_logic;
begin 

    F <= H xor J;
    E <= H or (not I);
    D <= G xor (not H);
    G <= A nor (not B);
    H <= (not B) nand (not C);
    I <= not (not B);
    J <= (not B) and (not C);

end architecture;