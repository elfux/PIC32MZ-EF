#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk.mk)" "nbproject/Makefile-local-pic32mz_ef_sk.mk"
include nbproject/Makefile-local-pic32mz_ef_sk.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c ../src/config/pic32mz_ef_sk/initialization.c ../src/config/pic32mz_ef_sk/interrupts.c ../src/config/pic32mz_ef_sk/exceptions.c ../src/main_pic32mz_ef_sk.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1098417660/plib_clk.o ${OBJECTDIR}/_ext/308860137/plib_evic.o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ${OBJECTDIR}/_ext/942849350/initialization.o ${OBJECTDIR}/_ext/942849350/interrupts.o ${OBJECTDIR}/_ext/942849350/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1098417660/plib_clk.o.d ${OBJECTDIR}/_ext/308860137/plib_evic.o.d ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o.d ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o.d ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d ${OBJECTDIR}/_ext/942849350/initialization.o.d ${OBJECTDIR}/_ext/942849350/interrupts.o.d ${OBJECTDIR}/_ext/942849350/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1098417660/plib_clk.o ${OBJECTDIR}/_ext/308860137/plib_evic.o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ${OBJECTDIR}/_ext/942849350/initialization.o ${OBJECTDIR}/_ext/942849350/interrupts.o ${OBJECTDIR}/_ext/942849350/exceptions.o ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o

# Source Files
SOURCEFILES=../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi3_master.c ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi2_master.c ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c ../src/config/pic32mz_ef_sk/initialization.c ../src/config/pic32mz_ef_sk/interrupts.c ../src/config/pic32mz_ef_sk/exceptions.c ../src/main_pic32mz_ef_sk.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk.mk ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=,--script="..\src\config\pic32mz_ef_sk\p32MZ2048EFH144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1098417660/plib_clk.o: ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz_ef_sk/a64b69c8148494ed7899fbe7e50dc61e1b7f656d .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/1098417660" 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098417660/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/308860137/plib_evic.o: ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz_ef_sk/ec3f0affb668274d23f52d54a5bc4a6b9d951bdd .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/308860137" 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308860137/plib_evic.o.d" -o ${OBJECTDIR}/_ext/308860137/plib_evic.o ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/308913965/plib_gpio.o: ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz_ef_sk/7b778165831a720fa9f84b61984c3bf314eb2cfe .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/308913965" 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308913965/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/880281206/plib_spi3_master.o: ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/pic32mz_ef_sk/1e1b4d9f4293dcfe96f8d51821a1639561f0ad12 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/880281206" 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/880281206/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/880281206/plib_spi2_master.o: ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz_ef_sk/c451e29989af25d72a18fbc1ee1bc5a6addf48cf .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/880281206" 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/880281206/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/309316908/plib_uart1.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz_ef_sk/fc047e9f7293ca3d233ed4f3eb5494bb53a1877 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/458842868/xc32_monitor.o: ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c  .generated_files/flags/pic32mz_ef_sk/7f7dff9a277d68916688dcca800dfe2b0e8484d3 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/458842868" 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/942849350/initialization.o: ../src/config/pic32mz_ef_sk/initialization.c  .generated_files/flags/pic32mz_ef_sk/a27997997694e8161536fdabbcf4484e6cfbed67 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/initialization.o.d" -o ${OBJECTDIR}/_ext/942849350/initialization.o ../src/config/pic32mz_ef_sk/initialization.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/942849350/interrupts.o: ../src/config/pic32mz_ef_sk/interrupts.c  .generated_files/flags/pic32mz_ef_sk/62d2a4cc405287a838cf79e23a72a5948a1bbd9c .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/interrupts.o.d" -o ${OBJECTDIR}/_ext/942849350/interrupts.o ../src/config/pic32mz_ef_sk/interrupts.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/942849350/exceptions.o: ../src/config/pic32mz_ef_sk/exceptions.c  .generated_files/flags/pic32mz_ef_sk/befe1c2956b7365fc0aacf70ead36e9cc542afd8 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/exceptions.o.d" -o ${OBJECTDIR}/_ext/942849350/exceptions.o ../src/config/pic32mz_ef_sk/exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o: ../src/main_pic32mz_ef_sk.c  .generated_files/flags/pic32mz_ef_sk/673b9ddf122cc644b18ea176e689002e19f4dfaf .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o ../src/main_pic32mz_ef_sk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
else
${OBJECTDIR}/_ext/1098417660/plib_clk.o: ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz_ef_sk/a299c2dd5b51d0340d6b0a89d2dc9705a3c6fd42 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/1098417660" 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098417660/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/308860137/plib_evic.o: ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz_ef_sk/e8fca126f402aa130456acf72e2093f52dd2fb8b .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/308860137" 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308860137/plib_evic.o.d" -o ${OBJECTDIR}/_ext/308860137/plib_evic.o ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/308913965/plib_gpio.o: ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz_ef_sk/b5eb25e4512c4c8ef03d127bc8bbef5a8042994f .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/308913965" 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308913965/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/880281206/plib_spi3_master.o: ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi3_master.c  .generated_files/flags/pic32mz_ef_sk/5211d7e05927ac2e6300d4a4e38cd737f1bfaa7c .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/880281206" 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/880281206/plib_spi3_master.o.d" -o ${OBJECTDIR}/_ext/880281206/plib_spi3_master.o ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi3_master.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/880281206/plib_spi2_master.o: ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/flags/pic32mz_ef_sk/c2a4d9a6fbe3875b5134bd6af190e097a0b94170 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/880281206" 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/880281206/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/880281206/plib_spi2_master.o ../src/config/pic32mz_ef_sk/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/309316908/plib_uart1.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz_ef_sk/2ef0b60a0b73d7a330642112de7d05906a1e5760 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/458842868/xc32_monitor.o: ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c  .generated_files/flags/pic32mz_ef_sk/a10825a4cc3fdbcf768ee8f71ebc466b7b0a4cab .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/458842868" 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/942849350/initialization.o: ../src/config/pic32mz_ef_sk/initialization.c  .generated_files/flags/pic32mz_ef_sk/bb81b26e311f16b2719a071b7bee50466b421549 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/initialization.o.d" -o ${OBJECTDIR}/_ext/942849350/initialization.o ../src/config/pic32mz_ef_sk/initialization.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/942849350/interrupts.o: ../src/config/pic32mz_ef_sk/interrupts.c  .generated_files/flags/pic32mz_ef_sk/6578e51d8b002d4977ee56abb1f5a70df0699e14 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/interrupts.o.d" -o ${OBJECTDIR}/_ext/942849350/interrupts.o ../src/config/pic32mz_ef_sk/interrupts.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/942849350/exceptions.o: ../src/config/pic32mz_ef_sk/exceptions.c  .generated_files/flags/pic32mz_ef_sk/ce19d00c852ab29748aee8019febab4672e351fe .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/exceptions.o.d" -o ${OBJECTDIR}/_ext/942849350/exceptions.o ../src/config/pic32mz_ef_sk/exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o: ../src/main_pic32mz_ef_sk.c  .generated_files/flags/pic32mz_ef_sk/5a3712c00dfa7b3f36889256e4128f610268f570 .generated_files/flags/pic32mz_ef_sk/85d639dac83e6d0d3e4d7968158f2dd6936a69ae
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mz_ef_sk" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o.d" -o ${OBJECTDIR}/_ext/1360937237/main_pic32mz_ef_sk.o ../src/main_pic32mz_ef_sk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wformat=2 -Werror-implicit-function-declaration -Wfloat-equal -Wundef -Wshadow -Wpointer-arith -Wbad-function-cast -Wwrite-strings -Waggregate-return -Wstrict-prototypes -Wmissing-format-attribute -Wno-deprecated-declarations -Wpacked -Wredundant-decls -Wnested-externs -Winline -Wlong-long -Wunreachable-code -Wmissing-noreturn   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mz_ef_sk/p32MZ2048EFH144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mz_ef_sk/p32MZ2048EFH144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz_ef_sk=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
