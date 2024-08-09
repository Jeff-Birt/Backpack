Backup flash firmware
 pbackup <file>q
Set boot sector files
 pboot [0|3|4|5|U <file>]q
Exit CLI State
 pbyeq
Calibrate ADC
 pcal <voltage>q
List out file to screen
 pcat <file>q
Change directory
 pcd <directory name>|..q 
Check the file format is valid
 pchk <src file> [dest file]q
Create loadable .DO file from .CO file
 pcodo <src file> [dest file]q	
Copy src to dest file
 pcp <src file> <dest file>q
Enter or print date
 pdate [d/m/y|m/d/y|y/m/d]q
Enter or print day
 pday [mon|tue|wed|thu|fri|sat|sun]q
Directory listing
 pdir [*.<filetail>][-w|-d|-m]q
Download src file
 pdownload <src file.DO>q
Reset to factory settings
 pfactoryq
Print list of commands
 phelpq
List BPD information 
 pinfo [cmd]q
Directory listing
 pls [*.<filetail>][-w|-d|-m]q
Make directory
 pmkdir <directory name>q
Copy src to dest file
 pmv <src file> <dest file>q
Present directory name
 ppwdq
Reboot the module
 prebootq
Rename src file to dest file
 pren <src file> <dest file>q
Reset the module
 presetq
Delete file
 prm <file> | <*.*>q
Delete directory
 prmdir <directory name>q
Set or print various BPD options
 pset [time <24|ampm> |q 
 pdate <mdy|dmy|ymd> |q  
 pflow <ON|OFF> |q 
 plines <1...255> |q 
 pupdate <OFF|ON> |q 
 psleep <0...60> |q 
 pboot <ON|OFF> |q
 pecho <ON|OFF> |q 
 pmode <WP2|MT|GEN>]q
Enter or print time
 ptime [hh:mm:ss|hh:mm:ss [a|p]]q
List out file
 ptype <file>q
Upload src file
 pupload <src file>q
Upload src file ctrl-z end
 puploadz <src file>q
 Use XMODEM to send a file
xmodt <filename>q
Use XMODEM to receive a file
xmodr [-c] <filename>q
Use XMODEM to receive a file
xmodz [-c] <filename>q