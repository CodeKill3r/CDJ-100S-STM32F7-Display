################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/Helix/mp3dec.c \
../Middlewares/Third_Party/Helix/mp3tabs.c 

OBJS += \
./Middlewares/Third_Party/Helix/mp3dec.o \
./Middlewares/Third_Party/Helix/mp3tabs.o 

C_DEPS += \
./Middlewares/Third_Party/Helix/mp3dec.d \
./Middlewares/Third_Party/Helix/mp3tabs.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/Helix/%.o Middlewares/Third_Party/Helix/%.su Middlewares/Third_Party/Helix/%.cyclo: ../Middlewares/Third_Party/Helix/%.c Middlewares/Third_Party/Helix/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -c -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FatFs/src -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/Third_Party/Helix/pub -I../Middlewares/Third_Party/Helix/real -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-Helix

clean-Middlewares-2f-Third_Party-2f-Helix:
	-$(RM) ./Middlewares/Third_Party/Helix/mp3dec.cyclo ./Middlewares/Third_Party/Helix/mp3dec.d ./Middlewares/Third_Party/Helix/mp3dec.o ./Middlewares/Third_Party/Helix/mp3dec.su ./Middlewares/Third_Party/Helix/mp3tabs.cyclo ./Middlewares/Third_Party/Helix/mp3tabs.d ./Middlewares/Third_Party/Helix/mp3tabs.o ./Middlewares/Third_Party/Helix/mp3tabs.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-Helix

