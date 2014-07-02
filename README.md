android_scripts
===============

Helpful scripts for build CM11

QuickStart:

    git clone https://github.com/XperiaSTE/android_scripts.git -b cm-11.0 xste;
    cd xste;
    repo init -u git://github.com/CyanogenMod/android -b cm-11.0;
    ./Update.sh;
    ./ODConfig.sh;
    ./CompileROM.sh -u; (Xperia U)
    ./CompileROM.sh -p; (Xperia P)   
    ./CompileROM.sh -s; (Xperia Sola)
    ./CompileROM.sh -g; (Xperia Go) 

OpenDelta Updater:

	For OpenDelta Configurator: ./ODConfig.sh nextversionnumber; 
	About the nextversionnumber you need to use future build version, not current build version.
	If this build is 14, type 15 (./ODConfig.sh 15;) 

Credits:
    
    @munjeni: Kernel, porting Android Kitkat to Xperia 2012 devices and bugfix
    @DevSwift: Develop on Xperia 2012 devices and bugfix
    @percy-g2: Support and bugfix
    @Andrewas: Stable repository mantainer and support
    @AOSX: Port Android Open Source Project to Xperia 2012
    @CyanogenMod: For CM-11
    @XperiaNovathor: For maintaining repos of kumquat
    @Legacy-Xperia: For updated patches and device trees
    @XperiaSTE: Update and maintain CyanogenMod 11 for Xperia 2012
