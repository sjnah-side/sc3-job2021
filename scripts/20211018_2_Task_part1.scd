(
~p1 = Task({
	g['HPa_CUL4'].size.div(3).do { |i| // inf = infinite

	g['HPa_CUL4'][3*i..3*i+2].postln;

	x = case
	{g['HPa_CUL4'][3*i].asString == "A"}  {69}
	{g['HPa_CUL4'][3*i].asString == "G"}  {67}
	{g['HPa_CUL4'][3*i].asString == "C"}  {60}
	{g['HPa_CUL4'][3*i].asString == "T"}  {Prand(#[62,64,65,71, 1])}
	{g['HPa_CUL4'][3*i].asString == "N"}  {0};
	x.postln;


//	z = rrand(1.0,2.0);

	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'leu', {Pbindef(\part1, \freq, (x + 12 + [0,4,8]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]}); //6
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'ser', {Pbindef(\part1, \freq, (x - 12 + [0,3,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]}); //6
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'arg', {Pbindef(\part1, \freq, (x + [0,3,6]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//6
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'asp', {Pbindef(\part1, \freq, (x - 12 + [0,3,7]).midicps.do, \amp, 0.4, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'val', {Pbindef(\part1, \freq, (x + 12 + [0,4,8]).midicps.do, \amp, 0.1, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'gly', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'pro', {Pbindef(\part1, \freq, (x + 24 + [0,3,6]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'thr', {Pbindef(\part1, \freq, (x - 12 + [0,4,8]).midicps.do, \amp, 0.4, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'ala', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'ile', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//3
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'lys', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.1, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'phe', {Pbindef(\part1, \freq, (x + [0,3,7]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'tyr', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.4, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'cys', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'gln', {Pbindef(\part1, \freq, (x + [0,4,8]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'his', {Pbindef(\part1, \freq, (x + [0,3,6]).midicps.do, \amp, 0.1, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'glu', {Pbindef(\part1, \freq, (x + [0,3,7]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'met', {Pbindef(\part1, \freq, (x + [0,4,8]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//1 //strating Q
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'try', {Pbindef(\part1, \freq, (x + [0,3,6]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});//1
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == 'STOP', {Pbindef(\part1, \freq, (x + [0,0,0]).midicps.do, \amp, 0.1, \dur, y).play} && {y = rrand(0.0,5.0)}); //ending Q
	if (c[g['HPa_CUL4'][3*i..3*i+2].asSymbol] == '', {Pbindef(\part1, \freq, nil, \amp, 0.0, \dur, 0).play} && {y = l[c[g['HPa_CUL4'][3*i..3*i+2].asSymbol]]});

	c[g['HPa_CUL4'][3*i..3*i+2].asSymbol].postln;

	y.yield;
	y.postln;
	("").postln;

}})
)

