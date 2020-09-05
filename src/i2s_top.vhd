-- Top level entity of the i2s project
-- instantiates the below
-- 1. i2s_tx
-- 2. rom
-- 3. rom controller
-- 4. clock generator
entity i2s_top is
  generic (
    g_ratio : integer := 8;
    g_width : integer := 16
  );
  port (
    -- system clock and reset
    i_sysclk : in std_logic;
    i_sysrst : in std_logic;
    -- interface signals to CS4344
    o_cs4344 : out t_to_cs4344;
    -- Arty LED pins from Zynq
    o_led : out std_logic_vector(3 downto 0)
  );
end i2s_top;

architecture struct of i2s_top is
begin

end architecture struct;
  
