-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 20 19:34:24 2021
-- Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_Req2Counter_0_2/Req2_Req2Counter_0_2_stub.vhdl
-- Design      : Req2_Req2Counter_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Req2_Req2Counter_0_2 is
  Port ( 
    Cen : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Tc : out STD_LOGIC;
    Y : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end Req2_Req2Counter_0_2;

architecture stub of Req2_Req2Counter_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Cen,clk,rst,Tc,Y[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Req2Counter,Vivado 2020.2";
begin
end;
