# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "Component_Name" -parent ${Page_0}
  set C_Motor_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_Motor_S_AXI_DATA_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI data bus} ${C_Motor_S_AXI_DATA_WIDTH}
  set C_Motor_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_Motor_S_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_Motor_S_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_Motor_S_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Motor_S_AXI_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPEED_CTRL_PERIOD" -parent ${Page_0} -show_label false
  ipgui::add_param $IPINST -name "PWM_PERIOD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_FREQUENCY" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH { PARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_Motor_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH { PARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_Motor_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_Motor_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_Motor_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Motor_S_AXI_BASEADDR { PARAM_VALUE.C_Motor_S_AXI_BASEADDR } {
	# Procedure called to update C_Motor_S_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Motor_S_AXI_BASEADDR { PARAM_VALUE.C_Motor_S_AXI_BASEADDR } {
	# Procedure called to validate C_Motor_S_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_Motor_S_AXI_HIGHADDR { PARAM_VALUE.C_Motor_S_AXI_HIGHADDR } {
	# Procedure called to update C_Motor_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Motor_S_AXI_HIGHADDR { PARAM_VALUE.C_Motor_S_AXI_HIGHADDR } {
	# Procedure called to validate C_Motor_S_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.SPEED_CTRL_PERIOD { PARAM_VALUE.SPEED_CTRL_PERIOD } {
	# Procedure called to update SPEED_CTRL_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPEED_CTRL_PERIOD { PARAM_VALUE.SPEED_CTRL_PERIOD } {
	# Procedure called to validate SPEED_CTRL_PERIOD
	return true
}

proc update_PARAM_VALUE.PWM_PERIOD { PARAM_VALUE.PWM_PERIOD } {
	# Procedure called to update PWM_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PWM_PERIOD { PARAM_VALUE.PWM_PERIOD } {
	# Procedure called to validate PWM_PERIOD
	return true
}

proc update_PARAM_VALUE.CLK_FREQUENCY { PARAM_VALUE.CLK_FREQUENCY } {
	# Procedure called to update CLK_FREQUENCY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_FREQUENCY { PARAM_VALUE.CLK_FREQUENCY } {
	# Procedure called to validate CLK_FREQUENCY
	return true
}


proc update_MODELPARAM_VALUE.CLK_FREQUENCY { MODELPARAM_VALUE.CLK_FREQUENCY PARAM_VALUE.CLK_FREQUENCY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_FREQUENCY}] ${MODELPARAM_VALUE.CLK_FREQUENCY}
}

proc update_MODELPARAM_VALUE.PWM_PERIOD { MODELPARAM_VALUE.PWM_PERIOD PARAM_VALUE.PWM_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PWM_PERIOD}] ${MODELPARAM_VALUE.PWM_PERIOD}
}

proc update_MODELPARAM_VALUE.SPEED_CTRL_PERIOD { MODELPARAM_VALUE.SPEED_CTRL_PERIOD PARAM_VALUE.SPEED_CTRL_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPEED_CTRL_PERIOD}] ${MODELPARAM_VALUE.SPEED_CTRL_PERIOD}
}

proc update_MODELPARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH PARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_Motor_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH PARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_Motor_S_AXI_ADDR_WIDTH}
}

