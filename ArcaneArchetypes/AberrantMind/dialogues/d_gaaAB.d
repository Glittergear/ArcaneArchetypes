BEGIN d_gaaAB

IF ~TRUE()~ THEN BEGIN 0
	SAY ~Would you like to add the spells now?~
		++ ~Yes~ GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY ~Okay, it's done.~
	IF ~~ THEN DO ~ApplySpellRES("gaaABall",LastSummonerOf(Myself)) ActionOverride(LastSummonerOf(Myself),Rest()) SmallWait(1)~ GOTO 2
END

IF ~~ THEN BEGIN 2
	SAY ~~ 
	IF ~~ THEN DO ~DestroySelf()~ EXIT 
END 