library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
  port (
    a : in std_logic;
    b : in std_logic;
    f : out std_logic
  );
end entity;

architecture data_flow of and_gate is

begin

  f <= a and b;
end architecture;
