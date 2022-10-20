################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../distance_measurement_system.c \
../gpio.c \
../hcsr04_ultrasonic_sensor.c \
../icu.c \
../lcd.c 

OBJS += \
./distance_measurement_system.o \
./gpio.o \
./hcsr04_ultrasonic_sensor.o \
./icu.o \
./lcd.o 

C_DEPS += \
./distance_measurement_system.d \
./gpio.d \
./hcsr04_ultrasonic_sensor.d \
./icu.d \
./lcd.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


