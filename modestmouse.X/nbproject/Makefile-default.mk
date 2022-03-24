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
${OBJECTDIR}/ADCsetup.o: ADCsetup.c  .generated_files/flags/default/5e72f4bf0581c61ca4f6ea9e7ef694367f5ef0cb .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADCsetup.o.d 
	@${RM} ${OBJECTDIR}/ADCsetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADCsetup.c  -o ${OBJECTDIR}/ADCsetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ADCsetup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IOSetup.o: IOSetup.c  .generated_files/flags/default/f89228a8cd1da76a751a0a6c049bda4da503cec2 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IOSetup.o.d 
	@${RM} ${OBJECTDIR}/IOSetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  IOSetup.c  -o ${OBJECTDIR}/IOSetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/IOSetup.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PWMFunctions.o: PWMFunctions.c  .generated_files/flags/default/5e5e552716971a3eda0e7eed5542202609683cbc .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PWMFunctions.o.d 
	@${RM} ${OBJECTDIR}/PWMFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PWMFunctions.c  -o ${OBJECTDIR}/PWMFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PWMFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/QEIFunctions.o: QEIFunctions.c  .generated_files/flags/default/4697ffb064a7378f635689e45ff81bc87dcaa554 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/QEIFunctions.o.d 
	@${RM} ${OBJECTDIR}/QEIFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  QEIFunctions.c  -o ${OBJECTDIR}/QEIFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/QEIFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Timer1Functions.o: Timer1Functions.c  .generated_files/flags/default/5921000024791e77a71ea753de502962f634e2ea .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer1Functions.o.d 
	@${RM} ${OBJECTDIR}/Timer1Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer1Functions.c  -o ${OBJECTDIR}/Timer1Functions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Timer1Functions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/UARTFunctions.o: UARTFunctions.c  .generated_files/flags/default/baf55d1b8e8ca4a17760c1945befe50bb4e4a6a5 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UARTFunctions.o.d 
	@${RM} ${OBJECTDIR}/UARTFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UARTFunctions.c  -o ${OBJECTDIR}/UARTFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/UARTFunctions.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/99fa648d757053c3fb65985a6aa0b4fd41726010 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/ADCsetup.o: ADCsetup.c  .generated_files/flags/default/28dd4041d7bbe2b2371a2c27657ee04dfed885f6 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ADCsetup.o.d 
	@${RM} ${OBJECTDIR}/ADCsetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ADCsetup.c  -o ${OBJECTDIR}/ADCsetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ADCsetup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IOSetup.o: IOSetup.c  .generated_files/flags/default/37ef7b592aa32b801e703bb3859b64372d0702ff .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IOSetup.o.d 
	@${RM} ${OBJECTDIR}/IOSetup.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  IOSetup.c  -o ${OBJECTDIR}/IOSetup.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/IOSetup.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/PWMFunctions.o: PWMFunctions.c  .generated_files/flags/default/d46edf77b29ea334840c6e4d9a9a39875a518d07 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PWMFunctions.o.d 
	@${RM} ${OBJECTDIR}/PWMFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  PWMFunctions.c  -o ${OBJECTDIR}/PWMFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/PWMFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/QEIFunctions.o: QEIFunctions.c  .generated_files/flags/default/95f0f73b65bbc9ced41852aeae337473f544b936 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/QEIFunctions.o.d 
	@${RM} ${OBJECTDIR}/QEIFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  QEIFunctions.c  -o ${OBJECTDIR}/QEIFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/QEIFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/Timer1Functions.o: Timer1Functions.c  .generated_files/flags/default/523a7fc154db8bc028501537d49dc6ffa02f48a5 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer1Functions.o.d 
	@${RM} ${OBJECTDIR}/Timer1Functions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Timer1Functions.c  -o ${OBJECTDIR}/Timer1Functions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Timer1Functions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/UARTFunctions.o: UARTFunctions.c  .generated_files/flags/default/8822334d0affe1bdb8c5bdf592f91334c7ed726b .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UARTFunctions.o.d 
	@${RM} ${OBJECTDIR}/UARTFunctions.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  UARTFunctions.c  -o ${OBJECTDIR}/UARTFunctions.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/UARTFunctions.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/344f771b4817617908a9ab309c41f90bb245cf20 .generated_files/flags/default/daee4ddb523c8e0e0c4f89c94cca721209ec10c
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
