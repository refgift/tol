BEGIN
	OUTPUT BLUE;
	OUTPUT "Tolstoy Vigilance"
	OUTPUT NEWLINE;
	OUTPUT MAGENTA;
	OUTPUT "(C) Copyright 2026 Larry B. Daniel, Atlanta Ga."
	OUTPUT NEWLINE;
	OUTPUT "Metrics start to shine / Polished metal reflects light / Standards are surpassed"
	OUTPUT NEWLINE;
	OUTPUT CLEAR;

	INTEGER RND;
	INTEGER ACCUMULATOR;
	INTEGER APPLY;

	INTEGER OUT;
	OUT := 25000;

	INTEGER COMMUNIST; 
	COMMUNIST := 153;

 	INTEGER CHARITY; 
	CHARITY := 85;

	INTEGER LOVE;
	LOVE := 66;
	INTEGER JOY;
	JOY := 43;
	INTEGER PEACE;
	PEACE := 98;
	

	INTEGER SWITCH;
	SWITCH := 0;

S0:	YIELD;
	ACCUMULATOR := 0;

S1:	YIELD;
	
	RND := RANDOM;
	RND := ROOT;

	IF ACCUMULATOR = 100 THEN JUMP S2; 
	IF ACCUMULATOR = 150 THEN JUMP S3; 
	IF RND = 1 THEN	ACCUMULATOR := 100;
	JUMP S1;

S2:	YIELD;	
	IF RND = 5 THEN ACCUMULATOR := 150;
	JUMP S1;

S3:	YIELD;	
	IF RND = 3 THEN ACCUMULATOR := COMMUNIST;

	IF ACCUMULATOR = COMMUNIST THEN 
	BEGIN
                INTEGER CASE;
                CASE := SWITCH % 3 ;
                APPLY := 0;
                TIMED OUT ;
                IF CASE = 0 THEN APPLY := LOVE;
                IF CASE = 1 THEN APPLY := JOY;
                IF CASE = 2 THEN APPLY := PEACE;
                TIMED OUT ;
                APPLY := 0;
                TIMED OUT ;
                ACCUMULATOR := 0;
                SWITCH := SWITCH + 1 ;
	END
	JUMP S0;
END