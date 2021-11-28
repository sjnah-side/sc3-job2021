(
~t = Routine{

"20211031_2_LOAD.scd".loadPaths;
~r.play;
8.0.wait;

"20211031_1_Synth_part1.scd".loadPaths;
2.0.wait;



~o = {

//part1
	var sum, lenth, index;

	g['HPa_chl'].size.div(3).postln;
	g['HPa_chl'].size.div(3).do { |i|

	3*i.postln;
	g['HPa_chl'][3*i..3*i+2].postln;

	x = case
	{g['HPa_chl'][3*i].asString == "A"}  {69}
	{g['HPa_chl'][3*i].asString == "G"}  {67}
	{g['HPa_chl'][3*i].asString == "C"}  {60}
	{g['HPa_chl'][3*i].asString == "T"}  {Prand(#[62,64,65,71, 1])}
	{g['HPa_chl'][3*i].asString == "N"}  {0};
	x.postln;


	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'leu', {Pbindef(\part1, \freq, (x + 12 + [0,4,8]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]}); //6
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'ser', {Pbindef(\part1, \freq, (x - 12 + [0,3,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]}); //6
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'arg', {Pbindef(\part1, \freq, (x + [0,3,6]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//6
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'asp', {Pbindef(\part1, \freq, (x - 12 + [0,3,7]).midicps.do, \amp, 0.4, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'val', {Pbindef(\part1, \freq, (x + 12 + [0,4,8]).midicps.do, \amp, 0.1, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'gly', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'pro', {Pbindef(\part1, \freq, (x + 24 + [0,3,6]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'thr', {Pbindef(\part1, \freq, (x - 12 + [0,4,8]).midicps.do, \amp, 0.4, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'ala', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//4
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'ile', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//3
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'lys', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.1, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'phe', {Pbindef(\part1, \freq, (x + [0,3,7]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'tyr', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.4, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'cys', {Pbindef(\part1, \freq, (x + [0,4,7]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'gln', {Pbindef(\part1, \freq, (x + [0,4,8]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'his', {Pbindef(\part1, \freq, (x + [0,3,6]).midicps.do, \amp, 0.1, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'glu', {Pbindef(\part1, \freq, (x + [0,3,7]).midicps.do, \amp, 0.3, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'met', {Pbindef(\part1, \freq, (x + [0,4,8]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//1 //strating Q
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'try', {Pbindef(\part1, \freq, (x + [0,3,6]).midicps.do, \amp, 0.2, \dur, y).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});//1
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == 'STOP', {Pbindef(\part1, \freq, (x + [0,0,0]).midicps.do, \amp, 0.1, \dur, y).play} && {y = rrand(0.0,5.0)}); //ending Q
	if (c[g['HPa_chl'][3*i..3*i+2].asSymbol] == '', {Pbindef(\part1, \freq, nil, \amp, 0.0, \dur, 0).play} && {y = l[c[g['HPa_chl'][3*i..3*i+2].asSymbol]]});

	c[g['HPa_chl'][3*i..3*i+2].asSymbol].postln;

//0.1.yield;
	y.yield;
	y.postln;
	("").postln;

};
//e = 11111111111;
//e.postln;
3.yield;


//part2
	g['HPa_chl'].size.postln;
	g['HPa_chl'].size.do{ |i|

	i.postln;
	g['HPa_chl'][i].postln;

	x = case
	{g['HPa_chl'][i].asString == "A"}  {69 + [0, -12, 12].choose}
	{g['HPa_chl'][i].asString == "G"}  {67 + [0, -12, 12].choose}
	{g['HPa_chl'][i].asString == "C"}  {60 + [0, -12, 12].choose}
	{g['HPa_chl'][i].asString == "T"}  {Prand(#[62,64,65,71, 1]) + [0, -12, 12].choose}
	{g['HPa_chl'][i].asString == "N"}  {0};
	x.postln;

	y = case
	{g['HPa_chl'][i].asString == "A"}  {("A".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_chl'][i].asString == "G"}  {("G".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_chl'][i].asString == "C"}  {("C".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_chl'][i].asString == "T"}  {("T".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_chl'][i].asString == "N"}  {("N".ascii + [0, -12, 12].choose).midicps};
	y.postln;

	z = rrand(0.0, 0.75);
	z.postln;

	if (g['HPa_chl'][i].asString == "A",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_chl'][i].asString == "G",
			{Synth(\part2,[\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_chl'][i].asString == "C",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_chl'][i].asString == "T",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_chl'][i].asString == "N",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});

//0.1.yield;
	z.yield;
	("").postln;
};
//e = 2222222222;
//e.postln;
3.yield;


//part3
  sum = 0;
  lenth = 0;
  index = 0;

  g['HPa_chl'].size.postln;
  while ({sum < g['HPa_chl'].size},

	{lenth = rrand(1, 10);

	v = List.newClear;
	w = List.newClear;

	g['HPa_chl'][sum..sum+lenth-1].size.do

	{ |i|

	if (g['HPa_chl'][sum+index].asString == "A", {x = 69 + [0, -12, 12].choose});
	if (g['HPa_chl'][sum+index].asString == "G", {x = 67 + [0, -12, 12].choose});
	if (g['HPa_chl'][sum+index].asString == "C", {x = 60 + [0, -12, 12].choose});
	if (g['HPa_chl'][sum+index].asString == "T", {x = [62,64,65,71].choose + [0, -12, 12].choose});
	if (g['HPa_chl'][sum+index].asString == "N", {x = 0});

	v.array.add(x);

	if (g['HPa_chl'][sum+index].asString == "A", {y = ("A".ascii + [0, -12, 12].choose)});
	if (g['HPa_chl'][sum+index].asString == "G", {y = ("G".ascii + [0, -12, 12].choose)});
	if (g['HPa_chl'][sum+index].asString == "C", {y = ("C".ascii + [0, -12, 12].choose)});
	if (g['HPa_chl'][sum+index].asString == "T", {y = ("T".ascii + [0, -12, 12].choose)});
	if (g['HPa_chl'][sum+index].asString == "N", {y = ("N".ascii + [0, -12, 12].choose)});

	w.array.add(y[0]);

	index = index + 1;
	};

	g['HPa_chl'][sum..sum+lenth-1].size.postln;
	g['HPa_chl'][sum..sum+lenth-1].postln;

	v.postln;
	w.postln;

	Synth(\part3_1, [\freq, (v+w), \ring, 1!v.size, \dur, g['HPa_chl'][sum..sum+lenth-1].size]);
	Synth(\part3_2, [\freq, (v+w).midicps, \ring, 1!v.size, \constant, v.size, \dur, g['HPa_chl'][sum..sum+lenth-1].size]);
	Synth(\part3_3, [\in, v.sum + w.sum,  \dur, g['HPa_chl'][sum..sum+lenth-1].size]);

//0.1.yield;
	g['HPa_chl'][sum..sum+lenth-1].size.yield;
	g['HPa_chl'][sum..sum+lenth-1].size.postln;

	"sum".postln;
	sum = sum + lenth;
	sum.postln;
});
//e = 3333333333;
//e.postln;
5.yield;

Server.quitAll;
Server.killAll;
0.exit;
};

~o.play};
~t.play;
)