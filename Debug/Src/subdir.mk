################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/bsp_driver_sd.c \
../Src/display.c \
../Src/dma.c \
../Src/dma2d.c \
../Src/fatfs.c \
../Src/fatfs_platform.c \
../Src/fmc.c \
../Src/ft5336.c \
../Src/gpio.c \
../Src/i2c.c \
../Src/ltdc.c \
../Src/main.c \
../Src/mp3player.c \
../Src/rekordbox.c \
../Src/sai.c \
../Src/sd_diskio.c \
../Src/sdmmc.c \
../Src/spi.c \
../Src/stm32746g_discovery_audio.c \
../Src/stm32746g_discovery_ts.c \
../Src/stm32f7xx_hal_msp.c \
../Src/stm32f7xx_it.c \
../Src/syscalls.c \
../Src/system_stm32f7xx.c \
../Src/tim.c \
../Src/usb_host.c \
../Src/usbh_conf.c \
../Src/usbh_diskio.c \
../Src/usbh_platform.c \
../Src/waveplayer.c \
../Src/wm8994.c 

OBJS += \
./Src/bsp_driver_sd.o \
./Src/display.o \
./Src/dma.o \
./Src/dma2d.o \
./Src/fatfs.o \
./Src/fatfs_platform.o \
./Src/fmc.o \
./Src/ft5336.o \
./Src/gpio.o \
./Src/i2c.o \
./Src/ltdc.o \
./Src/main.o \
./Src/mp3player.o \
./Src/rekordbox.o \
./Src/sai.o \
./Src/sd_diskio.o \
./Src/sdmmc.o \
./Src/spi.o \
./Src/stm32746g_discovery_audio.o \
./Src/stm32746g_discovery_ts.o \
./Src/stm32f7xx_hal_msp.o \
./Src/stm32f7xx_it.o \
./Src/syscalls.o \
./Src/system_stm32f7xx.o \
./Src/tim.o \
./Src/usb_host.o \
./Src/usbh_conf.o \
./Src/usbh_diskio.o \
./Src/usbh_platform.o \
./Src/waveplayer.o \
./Src/wm8994.o 

C_DEPS += \
./Src/bsp_driver_sd.d \
./Src/display.d \
./Src/dma.d \
./Src/dma2d.d \
./Src/fatfs.d \
./Src/fatfs_platform.d \
./Src/fmc.d \
./Src/ft5336.d \
./Src/gpio.d \
./Src/i2c.d \
./Src/ltdc.d \
./Src/main.d \
./Src/mp3player.d \
./Src/rekordbox.d \
./Src/sai.d \
./Src/sd_diskio.d \
./Src/sdmmc.d \
./Src/spi.d \
./Src/stm32746g_discovery_audio.d \
./Src/stm32746g_discovery_ts.d \
./Src/stm32f7xx_hal_msp.d \
./Src/stm32f7xx_it.d \
./Src/syscalls.d \
./Src/system_stm32f7xx.d \
./Src/tim.d \
./Src/usb_host.d \
./Src/usbh_conf.d \
./Src/usbh_diskio.d \
./Src/usbh_platform.d \
./Src/waveplayer.d \
./Src/wm8994.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -c -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FatFs/src -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/Third_Party/Helix/pub -I../Middlewares/Third_Party/Helix/real -Og -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/bsp_driver_sd.d ./Src/bsp_driver_sd.o ./Src/bsp_driver_sd.su ./Src/display.d ./Src/display.o ./Src/display.su ./Src/dma.d ./Src/dma.o ./Src/dma.su ./Src/dma2d.d ./Src/dma2d.o ./Src/dma2d.su ./Src/fatfs.d ./Src/fatfs.o ./Src/fatfs.su ./Src/fatfs_platform.d ./Src/fatfs_platform.o ./Src/fatfs_platform.su ./Src/fmc.d ./Src/fmc.o ./Src/fmc.su ./Src/ft5336.d ./Src/ft5336.o ./Src/ft5336.su ./Src/gpio.d ./Src/gpio.o ./Src/gpio.su ./Src/i2c.d ./Src/i2c.o ./Src/i2c.su ./Src/ltdc.d ./Src/ltdc.o ./Src/ltdc.su ./Src/main.d ./Src/main.o ./Src/main.su ./Src/mp3player.d ./Src/mp3player.o ./Src/mp3player.su ./Src/rekordbox.d ./Src/rekordbox.o ./Src/rekordbox.su ./Src/sai.d ./Src/sai.o ./Src/sai.su ./Src/sd_diskio.d ./Src/sd_diskio.o ./Src/sd_diskio.su ./Src/sdmmc.d ./Src/sdmmc.o ./Src/sdmmc.su ./Src/spi.d ./Src/spi.o ./Src/spi.su ./Src/stm32746g_discovery_audio.d ./Src/stm32746g_discovery_audio.o ./Src/stm32746g_discovery_audio.su ./Src/stm32746g_discovery_ts.d ./Src/stm32746g_discovery_ts.o ./Src/stm32746g_discovery_ts.su ./Src/stm32f7xx_hal_msp.d ./Src/stm32f7xx_hal_msp.o ./Src/stm32f7xx_hal_msp.su ./Src/stm32f7xx_it.d ./Src/stm32f7xx_it.o ./Src/stm32f7xx_it.su ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/system_stm32f7xx.d ./Src/system_stm32f7xx.o ./Src/system_stm32f7xx.su ./Src/tim.d ./Src/tim.o ./Src/tim.su ./Src/usb_host.d ./Src/usb_host.o ./Src/usb_host.su ./Src/usbh_conf.d ./Src/usbh_conf.o ./Src/usbh_conf.su ./Src/usbh_diskio.d ./Src/usbh_diskio.o ./Src/usbh_diskio.su ./Src/usbh_platform.d ./Src/usbh_platform.o ./Src/usbh_platform.su ./Src/waveplayer.d ./Src/waveplayer.o ./Src/waveplayer.su ./Src/wm8994.d ./Src/wm8994.o ./Src/wm8994.su

.PHONY: clean-Src

