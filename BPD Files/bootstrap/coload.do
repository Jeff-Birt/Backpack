1 CLS:CLEAR 256,55000:MAXFILES=2:W=PEEK(1):P$="COM:98N1DNN":F$="TS-DOS.CO":PRINT"Loading ";F$
2 IFW=51ORW=167THENR=64704:M=3
3 IFW=171THENR=63408:M=4
4 IFW=148THENR=64448:P$="COM:9N81NN":M=5
5 FORX=0TO28:READB:POKER+X,B:NEXT
6 IFW=171THENPOKER+1,199:POKER+2,247:POKER+9,25:POKER+10,133:POKER+21,182:POKER+22,247
7 IFW=148THENPOKER+1,215:POKER+2,251:POKER+9,211:POKER+10,109:POKER+21,198:POKER+22,251
8 OPENP$FOROUTPUTAS1:OPENP$FORINPUTAS2:PRINT#1,"FF";CHR$(M);
9 IFW=148THENEXECRELSECALLR
10 POKER+1,PEEK(R+23):POKER+2,PEEK(R+24):POKER+4,PEEK(R+25):POKER+5,PEEK(R+26)
11 IFW=148THENEXECRELSECALLR
12 S=PEEK(R+24)*256+PEEK(R+23):L=PEEK(R+26)*256+PEEK(R+25):E=PEEK(R+28)*256+PEEK(R+27)
13 POKES-5,PEEK(R+24):POKES-6,PEEK(R+23):POKES-3,PEEK(R+26):POKES-4,PEEK(R+25):POKES-1,PEEK(R+28):POKES-2,PEEK(R+27)
14 IFW=148THEN16
15 SAVEM F$,S,S+L-1,E:CLEAR256,S:NEW
16 BSAVE F$,S,L,E:CLEAR256,S:NEW
90 DATA33,215,252,1,6,0,229,197,205,126,109,216,193,225,119,35,11,120,177,200,195,198,252,0,0,0,0,0,0