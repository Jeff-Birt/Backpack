How to set the point of HIMEM in a NEC PC-8201A laptop

It works the same as for a Model 10x/200 laptop.  Use the CLEARn,himem phrase in BASIC.

Unfortunately, there is no HIMEM "function" in a NEC PC-8201A laptop.  Instead, the current point of HIMEM is
found by the BASIC phrase PEEK(-3196)+PEEK(-3195)*256.  Highest (cold-start) point of HIMEM is 62336.  To
lower the current point of HIMEM by 747, for TEENYN.CO for example, use the BASIC statement shown below.


L=747:P=PEEK(-3196)+PEEK(-3195)*256:CLEARFRE(""),P-L


For the BSAVE and BLOAD commands, the memory cells in the MAXRAM region for TOP, LEN, and EXE 16-bit values are:
 63936 (or -1600) is Lower 8-bit part of TOP
 63937 (or -1599) is Upper 8-bit part of TOP
 63938 (or -1598) is Lower 8-bit part of LEN
 63939 (or -1597) is Upper 8-bit part of LEN
 63940 (or -1596) is Lower 8-bit part of EXE
 63941 (or -1595) is Upper 8-bit part of EXE

In regard to trigger file creation in a NEC PC-8201A laptop, the two examples of BASIC statements shown below create
an appropriate named trigger file based on file TEENYN.CO.

CLEAR11:BLOAD"TEENYN":T=PEEK(-1600)+256*PEEK(-1599):N$="T"+MID$(STR$(T),2):BSAVEN$,T,1,T
[BASIC Interpreter ends interpretation after BSAVE phrase]  THIS EXAMPLE DOES NOT DELETE FILE TEENYN.CO

CLEAR12:T$="TEENYN.CO":BLOADT$:KILLT$:T=PEEK(-1600)+256*PEEK(-1599):T$=LEFT$(T$,1):BSAVET$+MID$(STR$(T),2),T,1,T
[BASIC Interpreter ends interpretation after BSAVE phrase]  THIS EXAMPLE DELETES FILE TEENYN.CO; BASIC PROGRAM
FILE TRIGGR.BA USES THE EXAMPLE ABOVE AS A SINGLE-LINE STATEMENT (LINE NUMBER 0).
