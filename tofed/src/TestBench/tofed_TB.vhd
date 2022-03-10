library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity tofed_tb is
end tofed_tb;

architecture TB_ARCHITECTURE of tofed_tb is
	-- Component declaration of the tested unit
	component tofed
	port(
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		x : in STD_LOGIC;
		q : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC;
	signal rst : STD_LOGIC;
	signal x : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal q : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : tofed
		port map (
			clk => clk,
			rst => rst,
			x => x,
			q => q
		);

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_tofed of tofed_tb is
	for TB_ARCHITECTURE
		for UUT : tofed
			use entity work.tofed(arch);
		end for;
	end for;
end TESTBENCH_FOR_tofed;

