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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=main.c Scheduler/Scheduler.c Timer/Timer.c Buttons/Buttons.c gpio/gpio.c gpio/gpio_Cfg.c Display/Display.c Display/Display_Cfg.c Scheduler/Scheduler_Cfg.c ModeManager_Cfg.c ModeManger/ModeManager.c Interrupt/Interrupt.c Interrupt/Interrupt_Cfg.c Scheduler/Task.c Clock/Clock.c SSD/SSD.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.p1 ${OBJECTDIR}/Scheduler/Scheduler.p1 ${OBJECTDIR}/Timer/Timer.p1 ${OBJECTDIR}/Buttons/Buttons.p1 ${OBJECTDIR}/gpio/gpio.p1 ${OBJECTDIR}/gpio/gpio_Cfg.p1 ${OBJECTDIR}/Display/Display.p1 ${OBJECTDIR}/Display/Display_Cfg.p1 ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1 ${OBJECTDIR}/ModeManager_Cfg.p1 ${OBJECTDIR}/ModeManger/ModeManager.p1 ${OBJECTDIR}/Interrupt/Interrupt.p1 ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1 ${OBJECTDIR}/Scheduler/Task.p1 ${OBJECTDIR}/Clock/Clock.p1 ${OBJECTDIR}/SSD/SSD.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/main.p1.d ${OBJECTDIR}/Scheduler/Scheduler.p1.d ${OBJECTDIR}/Timer/Timer.p1.d ${OBJECTDIR}/Buttons/Buttons.p1.d ${OBJECTDIR}/gpio/gpio.p1.d ${OBJECTDIR}/gpio/gpio_Cfg.p1.d ${OBJECTDIR}/Display/Display.p1.d ${OBJECTDIR}/Display/Display_Cfg.p1.d ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d ${OBJECTDIR}/ModeManager_Cfg.p1.d ${OBJECTDIR}/ModeManger/ModeManager.p1.d ${OBJECTDIR}/Interrupt/Interrupt.p1.d ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d ${OBJECTDIR}/Scheduler/Task.p1.d ${OBJECTDIR}/Clock/Clock.p1.d ${OBJECTDIR}/SSD/SSD.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.p1 ${OBJECTDIR}/Scheduler/Scheduler.p1 ${OBJECTDIR}/Timer/Timer.p1 ${OBJECTDIR}/Buttons/Buttons.p1 ${OBJECTDIR}/gpio/gpio.p1 ${OBJECTDIR}/gpio/gpio_Cfg.p1 ${OBJECTDIR}/Display/Display.p1 ${OBJECTDIR}/Display/Display_Cfg.p1 ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1 ${OBJECTDIR}/ModeManager_Cfg.p1 ${OBJECTDIR}/ModeManger/ModeManager.p1 ${OBJECTDIR}/Interrupt/Interrupt.p1 ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1 ${OBJECTDIR}/Scheduler/Task.p1 ${OBJECTDIR}/Clock/Clock.p1 ${OBJECTDIR}/SSD/SSD.p1

# Source Files
SOURCEFILES=main.c Scheduler/Scheduler.c Timer/Timer.c Buttons/Buttons.c gpio/gpio.c gpio/gpio_Cfg.c Display/Display.c Display/Display_Cfg.c Scheduler/Scheduler_Cfg.c ModeManager_Cfg.c ModeManger/ModeManager.c Interrupt/Interrupt.c Interrupt/Interrupt_Cfg.c Scheduler/Task.c Clock/Clock.c SSD/SSD.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F877A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Scheduler/Scheduler.p1: Scheduler/Scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Scheduler" 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler.p1.d 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Scheduler/Scheduler.p1 Scheduler/Scheduler.c 
	@-${MV} ${OBJECTDIR}/Scheduler/Scheduler.d ${OBJECTDIR}/Scheduler/Scheduler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Scheduler/Scheduler.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Timer/Timer.p1: Timer/Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Timer" 
	@${RM} ${OBJECTDIR}/Timer/Timer.p1.d 
	@${RM} ${OBJECTDIR}/Timer/Timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Timer/Timer.p1 Timer/Timer.c 
	@-${MV} ${OBJECTDIR}/Timer/Timer.d ${OBJECTDIR}/Timer/Timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Timer/Timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Buttons/Buttons.p1: Buttons/Buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Buttons" 
	@${RM} ${OBJECTDIR}/Buttons/Buttons.p1.d 
	@${RM} ${OBJECTDIR}/Buttons/Buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Buttons/Buttons.p1 Buttons/Buttons.c 
	@-${MV} ${OBJECTDIR}/Buttons/Buttons.d ${OBJECTDIR}/Buttons/Buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Buttons/Buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gpio/gpio.p1: gpio/gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gpio" 
	@${RM} ${OBJECTDIR}/gpio/gpio.p1.d 
	@${RM} ${OBJECTDIR}/gpio/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/gpio/gpio.p1 gpio/gpio.c 
	@-${MV} ${OBJECTDIR}/gpio/gpio.d ${OBJECTDIR}/gpio/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/gpio/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gpio/gpio_Cfg.p1: gpio/gpio_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gpio" 
	@${RM} ${OBJECTDIR}/gpio/gpio_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/gpio/gpio_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/gpio/gpio_Cfg.p1 gpio/gpio_Cfg.c 
	@-${MV} ${OBJECTDIR}/gpio/gpio_Cfg.d ${OBJECTDIR}/gpio/gpio_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/gpio/gpio_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Display/Display.p1: Display/Display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Display" 
	@${RM} ${OBJECTDIR}/Display/Display.p1.d 
	@${RM} ${OBJECTDIR}/Display/Display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Display/Display.p1 Display/Display.c 
	@-${MV} ${OBJECTDIR}/Display/Display.d ${OBJECTDIR}/Display/Display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Display/Display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Display/Display_Cfg.p1: Display/Display_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Display" 
	@${RM} ${OBJECTDIR}/Display/Display_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/Display/Display_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Display/Display_Cfg.p1 Display/Display_Cfg.c 
	@-${MV} ${OBJECTDIR}/Display/Display_Cfg.d ${OBJECTDIR}/Display/Display_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Display/Display_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1: Scheduler/Scheduler_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Scheduler" 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1 Scheduler/Scheduler_Cfg.c 
	@-${MV} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.d ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ModeManager_Cfg.p1: ModeManager_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ModeManager_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/ModeManager_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/ModeManager_Cfg.p1 ModeManager_Cfg.c 
	@-${MV} ${OBJECTDIR}/ModeManager_Cfg.d ${OBJECTDIR}/ModeManager_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ModeManager_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ModeManger/ModeManager.p1: ModeManger/ModeManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ModeManger" 
	@${RM} ${OBJECTDIR}/ModeManger/ModeManager.p1.d 
	@${RM} ${OBJECTDIR}/ModeManger/ModeManager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/ModeManger/ModeManager.p1 ModeManger/ModeManager.c 
	@-${MV} ${OBJECTDIR}/ModeManger/ModeManager.d ${OBJECTDIR}/ModeManger/ModeManager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ModeManger/ModeManager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Interrupt/Interrupt.p1: Interrupt/Interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Interrupt" 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt.p1.d 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Interrupt/Interrupt.p1 Interrupt/Interrupt.c 
	@-${MV} ${OBJECTDIR}/Interrupt/Interrupt.d ${OBJECTDIR}/Interrupt/Interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Interrupt/Interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1: Interrupt/Interrupt_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Interrupt" 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1 Interrupt/Interrupt_Cfg.c 
	@-${MV} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.d ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Scheduler/Task.p1: Scheduler/Task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Scheduler" 
	@${RM} ${OBJECTDIR}/Scheduler/Task.p1.d 
	@${RM} ${OBJECTDIR}/Scheduler/Task.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Scheduler/Task.p1 Scheduler/Task.c 
	@-${MV} ${OBJECTDIR}/Scheduler/Task.d ${OBJECTDIR}/Scheduler/Task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Scheduler/Task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Clock/Clock.p1: Clock/Clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Clock" 
	@${RM} ${OBJECTDIR}/Clock/Clock.p1.d 
	@${RM} ${OBJECTDIR}/Clock/Clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Clock/Clock.p1 Clock/Clock.c 
	@-${MV} ${OBJECTDIR}/Clock/Clock.d ${OBJECTDIR}/Clock/Clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Clock/Clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SSD/SSD.p1: SSD/SSD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SSD" 
	@${RM} ${OBJECTDIR}/SSD/SSD.p1.d 
	@${RM} ${OBJECTDIR}/SSD/SSD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/SSD/SSD.p1 SSD/SSD.c 
	@-${MV} ${OBJECTDIR}/SSD/SSD.d ${OBJECTDIR}/SSD/SSD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SSD/SSD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Scheduler/Scheduler.p1: Scheduler/Scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Scheduler" 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler.p1.d 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Scheduler/Scheduler.p1 Scheduler/Scheduler.c 
	@-${MV} ${OBJECTDIR}/Scheduler/Scheduler.d ${OBJECTDIR}/Scheduler/Scheduler.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Scheduler/Scheduler.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Timer/Timer.p1: Timer/Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Timer" 
	@${RM} ${OBJECTDIR}/Timer/Timer.p1.d 
	@${RM} ${OBJECTDIR}/Timer/Timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Timer/Timer.p1 Timer/Timer.c 
	@-${MV} ${OBJECTDIR}/Timer/Timer.d ${OBJECTDIR}/Timer/Timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Timer/Timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Buttons/Buttons.p1: Buttons/Buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Buttons" 
	@${RM} ${OBJECTDIR}/Buttons/Buttons.p1.d 
	@${RM} ${OBJECTDIR}/Buttons/Buttons.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Buttons/Buttons.p1 Buttons/Buttons.c 
	@-${MV} ${OBJECTDIR}/Buttons/Buttons.d ${OBJECTDIR}/Buttons/Buttons.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Buttons/Buttons.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gpio/gpio.p1: gpio/gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gpio" 
	@${RM} ${OBJECTDIR}/gpio/gpio.p1.d 
	@${RM} ${OBJECTDIR}/gpio/gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/gpio/gpio.p1 gpio/gpio.c 
	@-${MV} ${OBJECTDIR}/gpio/gpio.d ${OBJECTDIR}/gpio/gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/gpio/gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/gpio/gpio_Cfg.p1: gpio/gpio_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/gpio" 
	@${RM} ${OBJECTDIR}/gpio/gpio_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/gpio/gpio_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/gpio/gpio_Cfg.p1 gpio/gpio_Cfg.c 
	@-${MV} ${OBJECTDIR}/gpio/gpio_Cfg.d ${OBJECTDIR}/gpio/gpio_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/gpio/gpio_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Display/Display.p1: Display/Display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Display" 
	@${RM} ${OBJECTDIR}/Display/Display.p1.d 
	@${RM} ${OBJECTDIR}/Display/Display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Display/Display.p1 Display/Display.c 
	@-${MV} ${OBJECTDIR}/Display/Display.d ${OBJECTDIR}/Display/Display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Display/Display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Display/Display_Cfg.p1: Display/Display_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Display" 
	@${RM} ${OBJECTDIR}/Display/Display_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/Display/Display_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Display/Display_Cfg.p1 Display/Display_Cfg.c 
	@-${MV} ${OBJECTDIR}/Display/Display_Cfg.d ${OBJECTDIR}/Display/Display_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Display/Display_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1: Scheduler/Scheduler_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Scheduler" 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1 Scheduler/Scheduler_Cfg.c 
	@-${MV} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.d ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Scheduler/Scheduler_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ModeManager_Cfg.p1: ModeManager_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ModeManager_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/ModeManager_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/ModeManager_Cfg.p1 ModeManager_Cfg.c 
	@-${MV} ${OBJECTDIR}/ModeManager_Cfg.d ${OBJECTDIR}/ModeManager_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ModeManager_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ModeManger/ModeManager.p1: ModeManger/ModeManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/ModeManger" 
	@${RM} ${OBJECTDIR}/ModeManger/ModeManager.p1.d 
	@${RM} ${OBJECTDIR}/ModeManger/ModeManager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/ModeManger/ModeManager.p1 ModeManger/ModeManager.c 
	@-${MV} ${OBJECTDIR}/ModeManger/ModeManager.d ${OBJECTDIR}/ModeManger/ModeManager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ModeManger/ModeManager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Interrupt/Interrupt.p1: Interrupt/Interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Interrupt" 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt.p1.d 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Interrupt/Interrupt.p1 Interrupt/Interrupt.c 
	@-${MV} ${OBJECTDIR}/Interrupt/Interrupt.d ${OBJECTDIR}/Interrupt/Interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Interrupt/Interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1: Interrupt/Interrupt_Cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Interrupt" 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d 
	@${RM} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1 Interrupt/Interrupt_Cfg.c 
	@-${MV} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.d ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Interrupt/Interrupt_Cfg.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Scheduler/Task.p1: Scheduler/Task.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Scheduler" 
	@${RM} ${OBJECTDIR}/Scheduler/Task.p1.d 
	@${RM} ${OBJECTDIR}/Scheduler/Task.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Scheduler/Task.p1 Scheduler/Task.c 
	@-${MV} ${OBJECTDIR}/Scheduler/Task.d ${OBJECTDIR}/Scheduler/Task.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Scheduler/Task.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Clock/Clock.p1: Clock/Clock.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Clock" 
	@${RM} ${OBJECTDIR}/Clock/Clock.p1.d 
	@${RM} ${OBJECTDIR}/Clock/Clock.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/Clock/Clock.p1 Clock/Clock.c 
	@-${MV} ${OBJECTDIR}/Clock/Clock.d ${OBJECTDIR}/Clock/Clock.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Clock/Clock.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/SSD/SSD.p1: SSD/SSD.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/SSD" 
	@${RM} ${OBJECTDIR}/SSD/SSD.p1.d 
	@${RM} ${OBJECTDIR}/SSD/SSD.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     -o ${OBJECTDIR}/SSD/SSD.p1 SSD/SSD.c 
	@-${MV} ${OBJECTDIR}/SSD/SSD.d ${OBJECTDIR}/SSD/SSD.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/SSD/SSD.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mno-keep-startup -mno-osccal -mno-resetbits -mno-save-resetbits -mno-download -mno-stackcall -std=c99 -gdwarf-3 -mstack=compiled:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Digital_Clock.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
