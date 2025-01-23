Backup flash firmware
   backup <filename>
Set boot sector filenames
   boot [0|3|4|5|U <filename>]
Exit CLI State
   bye
Calibrate ADC
   cal <voltage>
List out filename to screen
   cat <filename>
Change directory
   cd <directory name>|.. 
Check the file format is valid
   chk <src filename> [dest filename]
Create loadable .DO file from .CO file
   codo <src filename> [dest filename]	Copy src to dest file
   cp <src filename> <dest filename>
Enter or print date
   date [d/m/y|m/d/y|y/m/d]
Enter or print day
   day [mon|tue|wed|thu|fri|sat|sun]
Directory listing
   dir [*.<filetail>][-w|-d|-m]
Download src file
   download <src filename.DO>
Reset to factory settings
   factory
Print list of commands
   help 
List BPD information 
   info
Directory listing
   ls [*.<filetail>][-w|-d|-m]
Make directory
   mkdir <directory name>
Copy src to dest file
   mv <src filename> <dest filename>
Present directory name
   pwd 
Rename src file to dest file
   ren <src filename> <dest filename>
Reboot the module
   reboot 
Reboot the module
   reset
Delete filename
   rm <filename> | <*.*>
Delete directory
   rmdir <directory name>
Set or print various BPD options
   set [time <24|ampm> | 
     date <mdy|dmy|ymd> | 
     flow <ON|OFF> | 
     lines <1...255> | 
     update <OFF|ON> | 
     sleep <0...60> | 
     boot <ON|OFF> |
     echo <ON|OFF> | 
     mode <WP2|MT|GEN>]
Enter or print time
   time [hh:mm:ss|hh:mm:ss [a|p]]
List out filename
   type <filename>
Upload src filename
   upload <src filename>
Upload src filename ctrl-z end
   uploadz <src filename>