(
~p2 = Task({
	g['HPa_CUL4'].size.do{ |i| // inf = infinite

	g['HPa_CUL4'][i].postln;

	x = case
	{g['HPa_CUL4'][i].asString == "A"}  {69 + [0, -12, 12].choose}
	{g['HPa_CUL4'][i].asString == "G"}  {67 + [0, -12, 12].choose}
	{g['HPa_CUL4'][i].asString == "C"}  {60 + [0, -12, 12].choose}
	{g['HPa_CUL4'][i].asString == "T"}  {Prand(#[62,64,65,71, 1]) + [0, -12, 12].choose}
	{g['HPa_CUL4'][i].asString == "N"}  {0};
	x.postln;

	y = case
	{g['HPa_CUL4'][i].asString == "A"}  {("A".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_CUL4'][i].asString == "G"}  {("G".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_CUL4'][i].asString == "C"}  {("C".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_CUL4'][i].asString == "T"}  {("T".ascii + [0, -12, 12].choose).midicps}
	{g['HPa_CUL4'][i].asString == "N"}  {("N".ascii + [0, -12, 12].choose).midicps};
	y.postln;

	z = rrand(0.0, 0.75);
	z.postln;

	if (g['HPa_CUL4'][i].asString == "A",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_CUL4'][i].asString == "G",
			{Synth(\part2,[\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_CUL4'][i].asString == "C",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_CUL4'][i].asString == "T",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});
	if (g['HPa_CUL4'][i].asString == "N",
			{Synth(\part2, [\freq1, x, \freq2, y, \dur, z])});

	z.yield;
	("").postln;

}})
)