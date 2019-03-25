
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = device_tree
 PARAMETER PROC_INSTANCE = ps7_cortexa9_0
 PARAMETER console_device = ps7_uart_1
 PARAMETER main_memory = ps7_ddr_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu_cortexa9
 PARAMETER HW_INSTANCE = ps7_cortexa9_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = L_MOTOR
 PARAMETER clock-names = motor_s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER compatible = xlnx,Pid-Motor-Ctrl-1.1
 PARAMETER reg = 0x43c00000 0x10000
 PARAMETER xlnx,motor-s-axi-addr-width = 6
 PARAMETER xlnx,motor-s-axi-data-width = 32
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = Pid_Motor_Ctrl_1
 PARAMETER clock-names = motor_s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER compatible = xlnx,Pid-Motor-Ctrl-1.1
 PARAMETER reg = 0x43c10000 0x10000
 PARAMETER xlnx,motor-s-axi-addr-width = 6
 PARAMETER xlnx,motor-s-axi-data-width = 32
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER HW_INSTANCE = axi_gpio_0
 PARAMETER clock-names = s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER compatible = xlnx,axi-gpio-2.0 xlnx,xps-gpio-1.00.a
 PARAMETER reg = 0x41200000 0x10000
 PARAMETER xlnx,all-inputs = 0
 PARAMETER xlnx,all-inputs-2 = 0
 PARAMETER xlnx,all-outputs = 1
 PARAMETER xlnx,all-outputs-2 = 0
 PARAMETER xlnx,dout-default = 0x00000000
 PARAMETER xlnx,dout-default-2 = 0x00000000
 PARAMETER xlnx,gpio-width = 2
 PARAMETER xlnx,gpio2-width = 32
 PARAMETER xlnx,interrupt-present = 0
 PARAMETER xlnx,is-dual = 0
 PARAMETER xlnx,tri-default = 0xFFFFFFFF
 PARAMETER xlnx,tri-default-2 = 0xFFFFFFFF
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axi_vdma
 PARAMETER HW_INSTANCE = axi_vdma_0
 PARAMETER clock-names = s_axi_lite_aclk m_axi_mm2s_aclk m_axis_mm2s_aclk m_axi_s2mm_aclk s_axis_s2mm_aclk
 PARAMETER clocks = clkc 15>, <&clkc 15>, <&clkc 15>, <&clkc 15>, <&clkc 15
 PARAMETER compatible = xlnx,axi-vdma-6.3 xlnx,axi-vdma-1.00.a
 PARAMETER interrupt-names = mm2s_introut s2mm_introut
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 29 4 0 30 4
 PARAMETER reg = 0x43000000 0x10000
 PARAMETER xlnx,addrwidth = 32
 PARAMETER xlnx,flush-fsync = 1
 PARAMETER xlnx,num-fstores = 3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_afi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_coresight_comp_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrps
 PARAMETER HW_INSTANCE = ps7_ddr_0
 PARAMETER reg = 0x0 0x40000000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrcps
 PARAMETER HW_INSTANCE = ps7_ddrc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = devcfg
 PARAMETER HW_INSTANCE = ps7_dev_cfg_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = none
 PARAMETER HW_INSTANCE = ps7_dma_ns
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = dmaps
 PARAMETER HW_INSTANCE = ps7_dma_s
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER HW_INSTANCE = ps7_ethernet_0
 PARAMETER phy-mode = rgmii-id
 PARAMETER xlnx,ptp-enet-clock = 100000000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = globaltimerps
 PARAMETER HW_INSTANCE = ps7_globaltimer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpiops
 PARAMETER HW_INSTANCE = ps7_gpio_0
 PARAMETER emio-gpio-width = 2
 PARAMETER gpio-mask-high = 0
 PARAMETER gpio-mask-low = 22016
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_gpv_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER HW_INSTANCE = ps7_i2c_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_intc_dist_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_iop_bus_config_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_l2cachec_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ocmcps
 PARAMETER HW_INSTANCE = ps7_ocmc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pl310ps
 PARAMETER HW_INSTANCE = ps7_pl310_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pmups
 PARAMETER HW_INSTANCE = ps7_pmu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = qspips
 PARAMETER HW_INSTANCE = ps7_qspi_0
 PARAMETER is-dual = 0
 PARAMETER spi-rx-bus-width = 4
 PARAMETER spi-tx-bus-width = 4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_qspi_linear_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ramps
 PARAMETER HW_INSTANCE = ps7_ram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = none
 PARAMETER HW_INSTANCE = ps7_ram_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_scuc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scugic
 PARAMETER HW_INSTANCE = ps7_scugic_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scutimer
 PARAMETER HW_INSTANCE = ps7_scutimer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = scuwdt
 PARAMETER HW_INSTANCE = ps7_scuwdt_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = ps7_sd_0
 PARAMETER xlnx,has-cd = 1
 PARAMETER xlnx,has-power = 0
 PARAMETER xlnx,has-wp = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = slcrps
 PARAMETER HW_INSTANCE = ps7_slcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER HW_INSTANCE = ps7_uart_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbps
 PARAMETER HW_INSTANCE = ps7_usb_0
 PARAMETER phy_type = ulpi
 PARAMETER usb-reset = gpio0 46 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = xadcps
 PARAMETER HW_INSTANCE = ps7_xadc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER HW_INSTANCE = rfid
 PARAMETER clock-names = s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER compatible = xlnx,axi-uartlite-2.0 xlnx,xps-uartlite-1.00.a
 PARAMETER current-speed = 9600
 PARAMETER interrupt-names = interrupt
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 32 1
 PARAMETER port-number = 1
 PARAMETER reg = 0x42c10000 0x10000
 PARAMETER xlnx,baudrate = 9600
 PARAMETER xlnx,data-bits = 8
 PARAMETER xlnx,odd-parity = 0
 PARAMETER xlnx,s-axi-aclk-freq-hz-d = 100.0
 PARAMETER xlnx,use-parity = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER HW_INSTANCE = zigBee
 PARAMETER clock-names = s_axi_aclk
 PARAMETER clocks = clkc 15
 PARAMETER compatible = xlnx,axi-uartlite-2.0 xlnx,xps-uartlite-1.00.a
 PARAMETER current-speed = 9600
 PARAMETER interrupt-names = interrupt
 PARAMETER interrupt-parent = intc
 PARAMETER interrupts = 0 31 1
 PARAMETER port-number = 2
 PARAMETER reg = 0x42c00000 0x10000
 PARAMETER xlnx,baudrate = 9600
 PARAMETER xlnx,data-bits = 8
 PARAMETER xlnx,odd-parity = 0
 PARAMETER xlnx,s-axi-aclk-freq-hz-d = 100.0
 PARAMETER xlnx,use-parity = 0
END


