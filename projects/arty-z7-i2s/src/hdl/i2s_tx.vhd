-- Top level entity of the i2s project
-- instantiates the below
-- 1. i2s_tx
-- 2. rom
-- 3. rom controller
-- 4. clock generator
library work;
use work.i2s_pkg.all;

entity i2s_tx is
  generic (
    g_width : integer := 16
  );
  port (
    -- system clock and reset
    i_sysclk : in std_logic;
    i_sysrst : in std_logic;
    -- Input data from ROM
    i_tx_data : in std_logic_vector 
    -- interface signals to CS4344
    o_cs4344 : out t_to_cs4344;
  );
end i2s_tx;

architecture rtl of i2s_tx is
begin

end architecture rtl;
