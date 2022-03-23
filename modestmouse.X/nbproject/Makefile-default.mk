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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=30F4011
MP_LINKER_FILE_OPTION=,--script=p30F4011.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ADCsetup.o: ADCsetup.c  .generated_files/419ae6280328e0e9928582d539af5226c624037e.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADCsetup.o.d 
	@${RM} ${OBJECTDIR}/ADCsetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADCsetup.c  -o ${OBJECTDIR}/ADCsetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ADCsetup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IOSetup.o: IOSetup.c  .generated_files/299765f790d984b96b58a6eaf8cca866a3d09aac.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IOSetup.o.d 
	@${RM} ${OBJECTDIR}/IOSetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  IOSetup.c  -o ${OBJECTDIR}/IOSetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/IOSetup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PWMFunctions.o: PWMFunctions.c  .generated_files/a68281faeb60e11baa2f73de120141b95f2e816a.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PWMFunctions.o.d 
	@${RM} ${OBJECTDIR}/PWMFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PWMFunctions.c  -o ${OBJECTDIR}/PWMFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PWMFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/QEIFunctions.o: QEIFunctions.c  .generated_files/c05fbd643dfeba9f70838e11fa99bbb3b277fffc.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/QEIFunctions.o.d 
	@${RM} ${OBJECTDIR}/QEIFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  QEIFunctions.c  -o ${OBJECTDIR}/QEIFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/QEIFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Timer1Functions.o: Timer1Functions.c  .generated_files/44ac7809443f8d4f67624fa46af480894abc2913.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer1Functions.o.d 
	@${RM} ${OBJECTDIR}/Timer1Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer1Functions.c  -o ${OBJECTDIR}/Timer1Functions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Timer1Functions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/UARTFunctions.o: UARTFunctions.c  .generated_files/e69a165066de25dc5508dc3e2168c24aa3423978.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UARTFunctions.o.d 
	@${RM} ${OBJECTDIR}/UARTFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UARTFunctions.c  -o ${OBJECTDIR}/UARTFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/UARTFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/54bb6b3aa5aff851940bd8f5b3e3f2eab560ada3.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/ADCsetup.o: ADCsetup.c  .generated_files/f145ae4dc5a7467b01d0e0176bc0d5ef7452dbc5.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADCsetup.o.d 
	@${RM} ${OBJECTDIR}/ADCsetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADCsetup.c  -o ${OBJECTDIR}/ADCsetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ADCsetup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IOSetup.o: IOSetup.c  .generated_files/9d80b81c95468e845e4176b4447c81a7d347960d.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IOSetup.o.d 
	@${RM} ${OBJECTDIR}/IOSetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  IOSetup.c  -o ${OBJECTDIR}/IOSetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/IOSetup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PWMFunctions.o: PWMFunctions.c  .generated_files/cc2353d68889e8ec8e14c6b29113cf9aa19f2975.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PWMFunctions.o.d 
	@${RM} ${OBJECTDIR}/PWMFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PWMFunctions.c  -o ${OBJECTDIR}/PWMFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PWMFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/QEIFunctions.o: QEIFunctions.c  .generated_files/820552d94bab21d3a4c1b24e6697d42e5f982caa.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/QEIFunctions.o.d 
	@${RM} ${OBJECTDIR}/QEIFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  QEIFunctions.c  -o ${OBJECTDIR}/QEIFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/QEIFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Timer1Functions.o: Timer1Functions.c  .generated_files/edf0dbeabb10158886e5b5b9e3e840fdcab0d0ae.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer1Functions.o.d 
	@${RM} ${OBJECTDIR}/Timer1Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer1Functions.c  -o ${OBJECTDIR}/Timer1Functions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Timer1Functions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/UARTFunctions.o: UARTFunctions.c  .generated_files/1ff31ac3001f98acc5468e1e96a0eaacbed1a45e.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UARTFunctions.o.d 
	@${RM} ${OBJECTDIR}/UARTFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UARTFunctions.c  -o ${OBJECTDIR}/UARTFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/UARTFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/e2a366a4bf0f6bf0e7d9d53af619c73a909a3ce2.flag .generated_files/a0910c61d8398c05e5fc9707edb20c278ecd30a6.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/modestmouse.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
