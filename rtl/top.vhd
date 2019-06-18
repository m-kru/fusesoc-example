library ieee;
use ieee.std_logic_1164.all;

entity top is
    generic (
        TOP_ADD_DELAY : boolean := false
    );
    port (
        clk  : in std_logic;
        x0_i : in std_logic;
        y0_o : out std_logic
    );
end top;

architecture rtl of top is

begin

generic_false: if TOP_ADD_DELAY = false generate
    process(clk)
    begin
        if rising_edge(clk) then
            y0_o <= x0_i;
        end if;
    end process;
end generate;

generic_true: if TOP_ADD_DELAY = true generate
    process(clk)
        variable prev : std_logic := '0';
    begin
        if rising_edge(clk) then
            y0_o <= prev;
            prev := x0_i;
        end if;
    end process;
end generate;

end rtl;
