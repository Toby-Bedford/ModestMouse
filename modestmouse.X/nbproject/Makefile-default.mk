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
FINAL_IMAGE=${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ADCsetup.c IOSetup.c PWMFunctions.c QEIFunctions.c Timer1Functions.c UARTFunctions.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ADCsetup.o ${OBJECTDIR}/IOSetup.o ${OBJECTDIR}/PWMFunctions.o ${OBJECTDIR}/QEIFunctions.o ${OBJECTDIR}/Timer1Functions.o ${OBJECTDIR}/UARTFunctions.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ADCsetup.o.d ${OBJECTDIR}/IOSetup.o.d ${OBJECTDIR}/PWMFunctions.o.d ${OBJECTDIR}/QEIFunctions.o.d ${OBJECTDIR}/Timer1Functions.o.d ${OBJECTDIR}/UARTFunctions.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ADCsetup.o ${OBJECTDIR}/IOSetup.o ${OBJECTDIR}/PWMFunctions.o ${OBJECTDIR}/QEIFunctions.o ${OBJECTDIR}/Timer1Functions.o ${OBJECTDIR}/UARTFunctions.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=ADCsetup.c IOSetup.c PWMFunctions.c QEIFunctions.c Timer1Functions.c UARTFunctions.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=30F4011
MP_LINKER_FILE_OPTION=,--script=p30F4011.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ADCsetup.o: ADCsetup.c  .generated_files/flags/default/43a653c9df85a34f63d86e97417a60fda55856c8 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADCsetup.o.d 
	@${RM} ${OBJECTDIR}/ADCsetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADCsetup.c  -o ${OBJECTDIR}/ADCsetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ADCsetup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IOSetup.o: IOSetup.c  .generated_files/flags/default/fbc2446b6d69e2b129b47149bab2181cc68e830c .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IOSetup.o.d 
	@${RM} ${OBJECTDIR}/IOSetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  IOSetup.c  -o ${OBJECTDIR}/IOSetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/IOSetup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PWMFunctions.o: PWMFunctions.c  .generated_files/flags/default/e84cc723c2e3ba16deec51c194b4c3ca7151a543 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PWMFunctions.o.d 
	@${RM} ${OBJECTDIR}/PWMFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PWMFunctions.c  -o ${OBJECTDIR}/PWMFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PWMFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/QEIFunctions.o: QEIFunctions.c  .generated_files/flags/default/d4310ef44bb1eacdd04c0da5e208704309ab1fd2 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/QEIFunctions.o.d 
	@${RM} ${OBJECTDIR}/QEIFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  QEIFunctions.c  -o ${OBJECTDIR}/QEIFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/QEIFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Timer1Functions.o: Timer1Functions.c  .generated_files/flags/default/cf07f66e8d6c202bc243cd2417bde2cec083537 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer1Functions.o.d 
	@${RM} ${OBJECTDIR}/Timer1Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer1Functions.c  -o ${OBJECTDIR}/Timer1Functions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Timer1Functions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/UARTFunctions.o: UARTFunctions.c  .generated_files/flags/default/b790f850445393246687723adc0adca0adee0477 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UARTFunctions.o.d 
	@${RM} ${OBJECTDIR}/UARTFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UARTFunctions.c  -o ${OBJECTDIR}/UARTFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/UARTFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/925b183ce29610870ffda6b59e90ac212a1d7281 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/ADCsetup.o: ADCsetup.c  .generated_files/flags/default/50370cd4d86b410aff88b04efa84932d05ba7f56 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADCsetup.o.d 
	@${RM} ${OBJECTDIR}/ADCsetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADCsetup.c  -o ${OBJECTDIR}/ADCsetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ADCsetup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IOSetup.o: IOSetup.c  .generated_files/flags/default/b3d43c6dcba254d3467d7610cf52c9faa39804aa .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IOSetup.o.d 
	@${RM} ${OBJECTDIR}/IOSetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  IOSetup.c  -o ${OBJECTDIR}/IOSetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/IOSetup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PWMFunctions.o: PWMFunctions.c  .generated_files/flags/default/a19f8cff202548aab93cdc6920d3fd8103568a3 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PWMFunctions.o.d 
	@${RM} ${OBJECTDIR}/PWMFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PWMFunctions.c  -o ${OBJECTDIR}/PWMFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PWMFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/QEIFunctions.o: QEIFunctions.c  .generated_files/flags/default/8907db52bd681d4dce0dcabea0f76f1cce81bdac .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/QEIFunctions.o.d 
	@${RM} ${OBJECTDIR}/QEIFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  QEIFunctions.c  -o ${OBJECTDIR}/QEIFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/QEIFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Timer1Functions.o: Timer1Functions.c  .generated_files/flags/default/395d7cab5a1dbc4770d204aef5a2b6cc01be68e0 .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer1Functions.o.d 
	@${RM} ${OBJECTDIR}/Timer1Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer1Functions.c  -o ${OBJECTDIR}/Timer1Functions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Timer1Functions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/UARTFunctions.o: UARTFunctions.c  .generated_files/flags/default/a97767dbc31ba45f02d90ac6a491726540a3a99b .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UARTFunctions.o.d 
	@${RM} ${OBJECTDIR}/UARTFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UARTFunctions.c  -o ${OBJECTDIR}/UARTFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/UARTFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/b17ea2b5eb691af94a48d758e6e363a6e8b54e3f .generated_files/flags/default/fd67b544a79261c2fe49714d5749bb13d89b49dc
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/modestmouse.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
