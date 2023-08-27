################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/Helix/real/bitstream.c \
../Middlewares/Third_Party/Helix/real/buffers.c \
../Middlewares/Third_Party/Helix/real/dct32.c \
../Middlewares/Third_Party/Helix/real/dequant.c \
../Middlewares/Third_Party/Helix/real/dqchan.c \
../Middlewares/Third_Party/Helix/real/huffman.c \
../Middlewares/Third_Party/Helix/real/hufftabs.c \
../Middlewares/Third_Party/Helix/real/imdct.c \
../Middlewares/Third_Party/Helix/real/polyphase.c \
../Middlewares/Third_Party/Helix/real/scalfact.c \
../Middlewares/Third_Party/Helix/real/stproc.c \
../Middlewares/Third_Party/Helix/real/subband.c \
../Middlewares/Third_Party/Helix/real/trigtabs_fixpt.c 

OBJS += \
./Middlewares/Third_Party/Helix/real/bitstream.o \
./Middlewares/Third_Party/Helix/real/buffers.o \
./Middlewares/Third_Party/Helix/real/dct32.o \
./Middlewares/Third_Party/Helix/real/dequant.o \
./Middlewares/Third_Party/Helix/real/dqchan.o \
./Middlewares/Third_Party/Helix/real/huffman.o \
./Middlewares/Third_Party/Helix/real/hufftabs.o \
./Middlewares/Third_Party/Helix/real/imdct.o \
./Middlewares/Third_Party/Helix/real/polyphase.o \
./Middlewares/Third_Party/Helix/real/scalfact.o \
./Middlewares/Third_Party/Helix/real/stproc.o \
./Middlewares/Third_Party/Helix/real/subband.o \
./Middlewares/Third_Party/Helix/real/trigtabs_fixpt.o 

C_DEPS += \
./Middlewares/Third_Party/Helix/real/bitstream.d \
./Middlewares/Third_Party/Helix/real/buffers.d \
./Middlewares/Third_Party/Helix/real/dct32.d \
./Middlewares/Third_Party/Helix/real/dequant.d \
./Middlewares/Third_Party/Helix/real/dqchan.d \
./Middlewares/Third_Party/Helix/real/huffman.d \
./Middlewares/Third_Party/Helix/real/hufftabs.d \
./Middlewares/Third_Party/Helix/real/imdct.d \
./Middlewares/Third_Party/Helix/real/polyphase.d \
./Middlewares/Third_Party/Helix/real/scalfact.d \
./Middlewares/Third_Party/Helix/real/stproc.d \
./Middlewares/Third_Party/Helix/real/subband.d \
./Middlewares/Third_Party/Helix/real/trigtabs_fixpt.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/Helix/real/%.o Middlewares/Third_Party/Helix/real/%.su Middlewares/Third_Party/Helix/real/%.cyclo: ../Middlewares/Third_Party/Helix/real/%.c Middlewares/Third_Party/Helix/real/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -c -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FatFs/src -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/Third_Party/Helix/pub -I../Middlewares/Third_Party/Helix/real -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-Helix-2f-real

clean-Middlewares-2f-Third_Party-2f-Helix-2f-real:
	-$(RM) ./Middlewares/Third_Party/Helix/real/bitstream.cyclo ./Middlewares/Third_Party/Helix/real/bitstream.d ./Middlewares/Third_Party/Helix/real/bitstream.o ./Middlewares/Third_Party/Helix/real/bitstream.su ./Middlewares/Third_Party/Helix/real/buffers.cyclo ./Middlewares/Third_Party/Helix/real/buffers.d ./Middlewares/Third_Party/Helix/real/buffers.o ./Middlewares/Third_Party/Helix/real/buffers.su ./Middlewares/Third_Party/Helix/real/dct32.cyclo ./Middlewares/Third_Party/Helix/real/dct32.d ./Middlewares/Third_Party/Helix/real/dct32.o ./Middlewares/Third_Party/Helix/real/dct32.su ./Middlewares/Third_Party/Helix/real/dequant.cyclo ./Middlewares/Third_Party/Helix/real/dequant.d ./Middlewares/Third_Party/Helix/real/dequant.o ./Middlewares/Third_Party/Helix/real/dequant.su ./Middlewares/Third_Party/Helix/real/dqchan.cyclo ./Middlewares/Third_Party/Helix/real/dqchan.d ./Middlewares/Third_Party/Helix/real/dqchan.o ./Middlewares/Third_Party/Helix/real/dqchan.su ./Middlewares/Third_Party/Helix/real/huffman.cyclo ./Middlewares/Third_Party/Helix/real/huffman.d ./Middlewares/Third_Party/Helix/real/huffman.o ./Middlewares/Third_Party/Helix/real/huffman.su ./Middlewares/Third_Party/Helix/real/hufftabs.cyclo ./Middlewares/Third_Party/Helix/real/hufftabs.d ./Middlewares/Third_Party/Helix/real/hufftabs.o ./Middlewares/Third_Party/Helix/real/hufftabs.su ./Middlewares/Third_Party/Helix/real/imdct.cyclo ./Middlewares/Third_Party/Helix/real/imdct.d ./Middlewares/Third_Party/Helix/real/imdct.o ./Middlewares/Third_Party/Helix/real/imdct.su ./Middlewares/Third_Party/Helix/real/polyphase.cyclo ./Middlewares/Third_Party/Helix/real/polyphase.d ./Middlewares/Third_Party/Helix/real/polyphase.o ./Middlewares/Third_Party/Helix/real/polyphase.su ./Middlewares/Third_Party/Helix/real/scalfact.cyclo ./Middlewares/Third_Party/Helix/real/scalfact.d ./Middlewares/Third_Party/Helix/real/scalfact.o ./Middlewares/Third_Party/Helix/real/scalfact.su ./Middlewares/Third_Party/Helix/real/stproc.cyclo ./Middlewares/Third_Party/Helix/real/stproc.d ./Middlewares/Third_Party/Helix/real/stproc.o ./Middlewares/Third_Party/Helix/real/stproc.su ./Middlewares/Third_Party/Helix/real/subband.cyclo ./Middlewares/Third_Party/Helix/real/subband.d ./Middlewares/Third_Party/Helix/real/subband.o ./Middlewares/Third_Party/Helix/real/subband.su ./Middlewares/Third_Party/Helix/real/trigtabs_fixpt.cyclo ./Middlewares/Third_Party/Helix/real/trigtabs_fixpt.d ./Middlewares/Third_Party/Helix/real/trigtabs_fixpt.o ./Middlewares/Third_Party/Helix/real/trigtabs_fixpt.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-Helix-2f-real

