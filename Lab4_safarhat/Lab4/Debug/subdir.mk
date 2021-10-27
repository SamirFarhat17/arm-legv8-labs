################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Fib_array.s \
../array_even_odd.s \
../array_swap.s 

C_SRCS += \
../Lab4_main.c 

OBJS += \
./Fib_array.o \
./Lab4_main.o \
./array_even_odd.o \
./array_swap.o 

C_DEPS += \
./Lab4_main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler 8.2.1 [aarch64-elf]'
	aarch64-elf-as -g -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler 8.2.1 [aarch64-elf]'
	aarch64-elf-gcc -O0 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


