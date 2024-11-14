
################################################################
# This is a generated script based on design: Req2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Req2_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Req2Counter, Req2Counter, Req2Counter, Req2Counter, Req2Decoder, Req2DispCounter, Req2Div, Req2FSM, Req2Mux, Req2_7seg

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z007sclg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Req2

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set inc [ create_bd_port -dir I inc ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set seg_an [ create_bd_port -dir O -from 3 -to 0 seg_an ]
  set seg_cat [ create_bd_port -dir O -from 6 -to 0 seg_cat ]
  set start [ create_bd_port -dir I start ]
  set stop [ create_bd_port -dir I stop ]

  # Create instance: Req2Counter_0, and set properties
  set block_name Req2Counter
  set block_cell_name Req2Counter_0
  if { [catch {set Req2Counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Counter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2Counter_1, and set properties
  set block_name Req2Counter
  set block_cell_name Req2Counter_1
  if { [catch {set Req2Counter_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Counter_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2Counter_2, and set properties
  set block_name Req2Counter
  set block_cell_name Req2Counter_2
  if { [catch {set Req2Counter_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Counter_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2Counter_3, and set properties
  set block_name Req2Counter
  set block_cell_name Req2Counter_3
  if { [catch {set Req2Counter_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Counter_3 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2Decoder_0, and set properties
  set block_name Req2Decoder
  set block_cell_name Req2Decoder_0
  if { [catch {set Req2Decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Decoder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2DispCounter_0, and set properties
  set block_name Req2DispCounter
  set block_cell_name Req2DispCounter_0
  if { [catch {set Req2DispCounter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2DispCounter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2Div_0, and set properties
  set block_name Req2Div
  set block_cell_name Req2Div_0
  if { [catch {set Req2Div_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Div_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2FSM_0, and set properties
  set block_name Req2FSM
  set block_cell_name Req2FSM_0
  if { [catch {set Req2FSM_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2FSM_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2Mux_0, and set properties
  set block_name Req2Mux
  set block_cell_name Req2Mux_0
  if { [catch {set Req2Mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2Mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Req2_7seg_0, and set properties
  set block_name Req2_7seg
  set block_cell_name Req2_7seg_0
  if { [catch {set Req2_7seg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Req2_7seg_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create port connections
  connect_bd_net -net Req2Counter_0_Tc [get_bd_pins Req2Counter_0/Tc] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net Req2Counter_0_Y [get_bd_pins Req2Counter_0/Y] [get_bd_pins Req2Mux_0/I0]
  connect_bd_net -net Req2Counter_1_Tc [get_bd_pins Req2Counter_1/Tc] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net Req2Counter_1_Y [get_bd_pins Req2Counter_1/Y] [get_bd_pins Req2Mux_0/I1]
  connect_bd_net -net Req2Counter_2_Tc [get_bd_pins Req2Counter_2/Tc] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net Req2Counter_2_Y [get_bd_pins Req2Counter_2/Y] [get_bd_pins Req2Mux_0/I2]
  connect_bd_net -net Req2Counter_3_Y [get_bd_pins Req2Counter_3/Y] [get_bd_pins Req2Mux_0/I3]
  connect_bd_net -net Req2Decoder_0_seg_an [get_bd_ports seg_an] [get_bd_pins Req2Decoder_0/seg_an]
  connect_bd_net -net Req2DispCounter_0_B0 [get_bd_pins Req2Decoder_0/I0] [get_bd_pins Req2DispCounter_0/B0] [get_bd_pins Req2Mux_0/S0]
  connect_bd_net -net Req2DispCounter_0_B1 [get_bd_pins Req2Decoder_0/I1] [get_bd_pins Req2DispCounter_0/B1] [get_bd_pins Req2Mux_0/S1]
  connect_bd_net -net Req2Div_0_clk_1hz [get_bd_pins Req2Counter_0/clk] [get_bd_pins Req2Counter_1/clk] [get_bd_pins Req2Counter_2/clk] [get_bd_pins Req2Counter_3/clk] [get_bd_pins Req2Div_0/clk_1hz] [get_bd_pins Req2FSM_0/clk]
  connect_bd_net -net Req2FSM_0_Cen [get_bd_pins Req2Counter_0/Cen] [get_bd_pins Req2FSM_0/Cen] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net Req2Mux_0_Y [get_bd_pins Req2Mux_0/Y] [get_bd_pins Req2_7seg_0/Y]
  connect_bd_net -net Req2_7seg_0_seg_cat [get_bd_ports seg_cat] [get_bd_pins Req2_7seg_0/seg_cat]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins Req2DispCounter_0/disp_clk] [get_bd_pins Req2Div_0/clk]
  connect_bd_net -net inc_0_1 [get_bd_ports inc] [get_bd_pins Req2FSM_0/inc]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins Req2Counter_0/rst] [get_bd_pins Req2Counter_1/rst] [get_bd_pins Req2Counter_2/rst] [get_bd_pins Req2Counter_3/rst] [get_bd_pins Req2Div_0/rst] [get_bd_pins Req2FSM_0/rst]
  connect_bd_net -net start_0_1 [get_bd_ports start] [get_bd_pins Req2FSM_0/start]
  connect_bd_net -net stop_0_1 [get_bd_ports stop] [get_bd_pins Req2FSM_0/stop]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins Req2Counter_1/Cen] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins Req2Counter_2/Cen] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins Req2Counter_3/Cen] [get_bd_pins util_vector_logic_2/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


