################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/src/usb_demo/xusbps_ch9.c \
../src/src/usb_demo/xusbps_ch9_storage.c \
../src/src/usb_demo/xusbps_class_storage.c \
../src/src/usb_demo/xusbps_intr_example.c 

OBJS += \
./src/src/usb_demo/xusbps_ch9.o \
./src/src/usb_demo/xusbps_ch9_storage.o \
./src/src/usb_demo/xusbps_class_storage.o \
./src/src/usb_demo/xusbps_intr_example.o 

C_DEPS += \
./src/src/usb_demo/xusbps_ch9.d \
./src/src/usb_demo/xusbps_ch9_storage.d \
./src/src/usb_demo/xusbps_class_storage.d \
./src/src/usb_demo/xusbps_intr_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/src/usb_demo/%.o: ../src/src/usb_demo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../1_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

