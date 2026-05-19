################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LINKER_SCRIPT += \
../generate/linker_script.ld 

S_SRCS += \
../generate/exit.s \
../generate/start.s 

C_SRCS += \
../generate/inthandler.c \
../generate/vects.c 

S_DEPS += \
./generate/exit.d \
./generate/start.d 

CREF += \
risv.cref 

C_DEPS += \
./generate/inthandler.d \
./generate/vects.d 

OBJS += \
./generate/exit.o \
./generate/inthandler.o \
./generate/start.o \
./generate/vects.o 

MAP += \
risv.map 


# Each subdirectory must supply rules for building sources it contributes
generate/%.o: ../generate/%.s
	@echo 'Building file: $<'
	$(file > $@.in,--target=riscv32 -mabi=ilp32 -march=rv32imaczba_zbb_zbs -Og -ffunction-sections -fdata-sections -fdiagnostics-parseable-fixits -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Waggregate-return -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c "$<" -o "$@")
	@clang @"$@.in"
generate/%.o: ../generate/%.c
	@echo 'Building file: $<'
	$(file > $@.in,--target=riscv32 -mabi=ilp32 -march=rv32imaczba_zbb_zbs -Og -ffunction-sections -fdata-sections -fdiagnostics-parseable-fixits -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Waggregate-return -g -I"C:/Users/a5118811/git/e2studio/MoreSoftwareProjects/risv/generate" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" "$<" -c -o "$@")
	@clang @"$@.in"

