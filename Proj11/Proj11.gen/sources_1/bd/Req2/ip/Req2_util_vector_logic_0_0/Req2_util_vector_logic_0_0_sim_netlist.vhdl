-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 20 12:54:30 2021
-- Host        : LAPTOP-0B5K97VH running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/denis/Desktop/Proj11/Proj11.gen/sources_1/bd/Req2/ip/Req2_util_vector_logic_0_0/Req2_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : Req2_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Req2_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Req2_util_vector_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Req2_util_vector_logic_0_0 : entity is "Req2_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Req2_util_vector_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Req2_util_vector_logic_0_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2";
end Req2_util_vector_logic_0_0;

architecture STRUCTURE of Req2_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;