-------------------------------------------------------------------------------
--
-- Title       : tofed
-- Design      : tofed
-- Author      : Microsoft
-- Company     : Microsoft
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\state_diagram_of_tofed\tofed\src\tofed.vhd
-- Generated   : Fri Jan 22 10:17:47 2016
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {tofed} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 


entity tofed is
	port(
	clk,rst:in std_logic;
	x:in std_logic;
	q:out std_logic
	);
end tofed;



architecture arch of tofed is 
type tofed is 
(R,B,F,J,A,D,I,C,H,L,G,K,E);
signal state_reg,state_next:tofed ;
signal output:std_logic;

begin

	process(clk,rst)
	begin
		if (rst='1') then
			state_reg<=R;
		elsif(clk'event and clk='1') then
			state_reg<=state_next;
		end if;
		end process; 
-----------------------------------------------------------------------------------------
		
process (state_reg,x)
begin
	case state_reg is
		when R =>
		if	(x='1') then
			state_next<=B;
			output<='-';
		else
			state_next<=A;	
			output<='-';
		end if;
----------------------------------------------------------------end R	
		when B =>
		if (x='1') then
			state_next<= F;
			output<='-';
		else
			state_next<=D;
			output<='-';
		end if;	
-----------------------------------------------------------------end B		
		when F =>
		if (x='1')then
			state_next<= J;
			output<='-';
		else
			state_next<=I;
			output<='-';
		end if;
----------------------------------------------------------------end F		
		when J =>
		if (x='-') then
			state_next<=E;
			output<='-';
		end if;
------------------------------------------------------------------end J		
		when A =>
		if (x='1') then
			state_next<= D;
			output<='-';
		else
			state_next<= C;
			output<='-';
		end if;
-----------------------------------------------------------------end A		
		when D =>
		if (x='1') then
			state_next<= I;
			output<='-';
		else 
			state_next<=H;
			output<='-';
		end if;
-------------------------------------------------------------------end D		
			when I =>
			if (x='1') then
				state_next<=E;
				output<='-';
			else 
				state_next<=L;
				output<='-';
			end if;
---------------------------------------------------------------------end I			
			when c =>
			if (x='1') then 
				state_next<=H;
				output<='-';
			else 
				state_next<=G;
				output<='-';
			end if;
-----------------------------------------------------------------------end C			
             when H => 
			 if (x='1') then 
				 state_next<= L;
				 output<='-';
			 else 
				 state_next<=K;
				 output<='-';
			 end if;
-----------------------------------------------------------------------end H
               when L =>
			   if (x='1') then 
				   state_next<=R;
				   output<='1';
			   else 
				   state_next<=R;
				   output<='-';
			   end if;
----------------------------------------------------------------------end L	
             when G =>  
			 if (x='1') then 
				 state_next<=K;
				 output<='-';
			 else 
				 state_next<=E;
				 output<='-';
			 end if;
-------------------------------------------------------------------------end G
			  when K =>
			  if (x='1') then 
				  state_next<=R;
				 output<='1';
			  else
				  state_next<=R;
				  output<='0';
			  end if;
-------------------------------------------------------------------------end K			  
            when E =>
			if(x='-') then 
				state_next<=R;
				output<='-';
			end if;
--------------------------------------------------------------------------end E

end case;
end process;
q<=output;
end arch;
		 