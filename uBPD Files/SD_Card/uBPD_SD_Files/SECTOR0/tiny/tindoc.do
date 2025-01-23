05/09/95 Ron Wiesen
 
 
TINY by ACROATIX (c) 1986 entered the public domain in 1988.  It was TINY.PWR, an adjunct to POWR-DOS.
 
In 1992 Tracy Allen submitted TINY.CO, enclosed within loader TINYLD.BA, to the Club 100 library.
 
POWR-DOS documentation of TINY, as relayed by Joel Dinda's PWRTIP.002 in the library, is skimpy and either has mistakes or reflects something a bit different (error codes in particular) than what Tracy Allen enclosed within TINYLD.BA.
 
Long hours of code inspection, aimed at relocating TINY, uncovered the documentation mistakes and some waste in the code.  I now have a reverse engineered assembly source for TINY which I've improved (batch file drive) without increasing the size of TINY.  I'll submit an improved TINY and a BASIC batch file driver soon.  For now, here's TINY documentation.
 
---------------------------------------
                TINY MANUAL
 
        General
 
Tiny does file Kill/Load/Save on disk Bank 0.  Using only 760 bytes of HIMEM memory, it is tiny!
 
The 13 bytes at the end of Tiny are irrelevant.  After Tiny is loaded, you may overload them with something useful.
 
        Prompt and Command Syntax
 
Tiny has 4 commands: Kill Load Save Quit 
    Prompt:
        > C FFFFFF.XX (C=KLSQ)
        > 
Use all upper case letters and space-pad file names (NAME__.DO for Name.Do).
    Kill syntax:
        K [FILE__.__]
    Load syntax:
        L [FILE__.__]
    Save syntax:
        S [FILE__.__]
    Quit syntax:
        Q [Q]
 
        File Name Memory
 
Tiny remembers the last file name you typed.  All commands need a file name and Tiny uses the remembered file name when you don't explicitly supply one.  Even the Quit command needs a file name, but the name does not have to be legitimate.  The 2-command example below overwrites a disk file.
> K NAME  .DO
> S
 
        Error Codes
 
If trouble is encountered, Tiny issues one of the following 2-letter error codes:
SN  SyNtax
NM  NaMe illegal (e.g. 4SCORE.DO)
FF  File not Found
NR  RS232 Not Ready for disk access
ND  No Disk in drive
WP  Write-Protected disk (Save)
AE  file Already Exists, disk or memory
DF  Drive directory Full (Save)
FL  FuLL memory directory (Load)
OM  Out of Memory (Load)
CM  CoMmunication error
IO  I/O error RS232
 
The Load command can not overwrite a file in memory.  You must Quit Tiny, kill the file in memory, then invoke Tiny again to load the file from disk.  The example below shows the "discovery" that the file exists in memory, and the Quit of Tiny.
> L NAME  .DO
AE err  (file Already Exists in memory)
> Q
 
The 6-command example below shows a comedy of errors that finally overwrites a disk file.
> S NAME  .DO
NR err  (plug in cable, power on drive)
> S
ND err  (insert disk)
> S
WP err  (remove disk write-protect)
> S
AE err  (file Already Exists on disk)
> K
> S
 
        Beefs, Tips, Quirks and Humor
 
1.  I keep pressing the <Q> key but Tiny refuses to Quit.
 
Use <Q>_<Q> to Quit.  Or, you could press the reset button.  But, <BREAK> won't Quit Tiny.
 
Do you remember that Tiny "remembers" the previous file name?  What?  You say you just invoked Tiny, changed your mind and now want to quit but you haven't even typed any file name.  Tough!  The first file name that Tiny initially "remembers" is not something that you typed but is something that Tiny considers garbage as a file name for the Quit command.  It may be garbage left by a prior operation or by the way Tiny was invoked (from the menu or from BASIC).  Do you think Tiny code got so tiny by wasting code on initialization logic?
 
2.  I press a function key and Tiny goes nuts and pukes and scrolls the screen.
 
NEWS FLASH - When running Tiny from BASIC, don't press any function key.  If you do, whatever string is assigned ("Files", "Load ", or God forbid "K MYFILE.DO") is fed to Tiny for consumption.
 
3.  Everything was going well.  It was cool.  I was a Loadin'/Savin' dude with Tiny - I mean fast man - really burnin' up the disk.  But now, like... you know... I mean ... Tiny just sits there - stoned - don't do squat.  What it is Bro?
 
The trouble is bad Karma and lack of Cosmic vibes.  Really!  I checked with my Guru and she had a vision and saw what went down with you man.  Like... you know... I mean ... your disk drive tuned out man.  She saw you take a smoke break.  I know it was some good stuff 'cause she said you was gone for a quite a while.  Your disk drive took a break too!  Went trance-like in low power mode she said.
 
Flip the disk drive power switch off and on.  Now reunite with Tiny, live long & prosper.  Later dude!
 
4.  I created file DAMNED.2B but Tiny won't Save it.  What gives?
 
With some devilish application programs, you can make a file name extension that's damned to be straight from Hell - repent.  Actually, Tiny is willing to Save your file but it's the disk drive that doesn't like the file name extension.  The BASIC interpreter's NAME AS command doesn't change file name extensions, so no help there.  Another fine pickle you've got into Ollie.
 
To absolve your sin, go to BASIC and kill the file.  Follow the Marine Corps motto "Kill 'em all and let God sort 'em out." if there are other files in memory that have condemned file name extensions.
 
---------------------------------------

