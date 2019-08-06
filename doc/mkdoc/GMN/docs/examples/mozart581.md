

# Mozart Clarinet Quintet 

This example illustrates the use of title and composer.
It's a short excerpt of Mozart Clarinet Quintet, K. 581 

~~~~~~
{
	[ 
		\title<"Clarinet Quintet"> \composer<"Mozart, K. 581", dy=3> 
		\systemFormat<dx=2cm> \barFormat<"system">

		\instr<"Clarinet in A",transp="A", autopos="on"> 
		\clef<"g">   \key<"A"> \meter<"3/4">
		\i<"p", dy=-2> \sl( a1/8 c#2 | 
		(* meas. 1 *) e c# a/4 ) \sl( e/8 c# |
		(* meas. 2 *) h1 d2 f#/4)   \sl<"up">( d/8 h1 |
		(* meas. 3 *) \bm( a g# c#2 h1 e2 d )  ) |
	], 
	[ 
		\instr<"Violino I",autopos="on"> \clef<"g"> \key<"A"> \meter<"3/4"> 
		_/4 | _ \i<"p"> a a _ a a _ g# g# | 
	],
	[
		\instr<"Violino II",autopos="on"> \clef<"g"> \key<"A"> \meter<"3/4">
		_/4 |_ \i<"p"> e e _ f# f# _ d d |
	],
	[
		\instr<"Viola",autopos="on"> \clef<"c"> \key<"A"> \meter<"3/4">
		_/4 |  _ \i<"p"> c#1/4 c# _ b0 b _ b b |
	],
	[ 
		\instr<"Cello",autopos="on"> \clef<"f"> \key<"A"> \meter<"3/4"> 
		_/4 | \i<"p"> a0/4 _ _ | d _ _ e _ _ | 
	]
}
~~~~~~
{!GMN/examples/mozart581.html!}