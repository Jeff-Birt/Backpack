# Firmware for the Backpack Drive
The Backpack Drive mimics the TPDD 2 drive used by many Tandy and NEC laptops. This page contains the Firmware used to bring the drive to life.  There are two parts to the firmware load: Bootloader to install/update the main firmware and main firmware used to mimic the TPDD 2 drive.  

## Bootloader
The bootloader has to be installed using an Atmel SPI programmer, many such devices exist.  
## Main Firmware
The main firmware can be installed using the boot option on the device.  The firmware is listed using the version as part of the title.  Generally the file will be zipped for convenience.  The file should be unzipped and loaded into the root directory of the SD-Card.  Using the BOOT command to set up the firmware update. 
## Firmware Changes
### V1.04
Updated version with the following changes and bug fixes:
* Improved battery error reporting.  If the battery is too weak to access the SD-Card a check battery error will be reported in CLI mode after 45s and result in shutdown.  The green/yellow LEDs will flash together for about 10s to indicate shutdown mode.  A LowBat warning will now be shown in the top right of the TS-DOS screen, replaces ROOT, if viewing files at the time. Power cycling will return the BPD to operation, replacing the battery is recomended.
* The sector0 folder is now required and must be present on the SD-Card otherwise the unit will shutdown.  Without a card the BPD will continue to operate with SD-Card functions disabled. 
* When in GEN or WP2 mode the TS-DOS screen will show ROOT_G and ROOT_W respectively to indicate the mode is set wrong. 
* Hidden and System files will no longer be shown in TS-DOS mode.  System files are still visible in CLI mode operations.
*  In WP2 mode 9600bps is selected in the TELECOM app by using *ENTER* instead of 'U'.  Once 9600bps mode is entered hit *ENTER* 4 times to reach CLI mode. CLI must always be entered once in this mode.   The WP2 TELECOM app is very slow to display characters rapid typing is not recommended.
* New field added to info command to show BPD uptime as Days:hours:minutes.  The time data represents how long the BPD has been in run mode.  The timer does not take into account sleep time.  When V1.04 is first run it may report a problem with the NV RAM CR battery this error can be ignored.  If the error occurs subsequently then the CR battery on the board may need replacing.  
### V1.03
First released version
