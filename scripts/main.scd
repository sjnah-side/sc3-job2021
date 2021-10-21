(
~r = Routine{

"20211021_0_SetUp.scd".loadPaths;
2.5.wait;
"20211021_1_Synth_part2.scd".loadPaths;
0.2.wait;
"20211021_1_Synth_part3_1.scd".loadPaths;
0.2.wait;
"20211021_1_Synth_part3_2.scd".loadPaths;
0.2.wait;
"20211021_1_Synth_part3_3.scd".loadPaths;
0.2.wait;
"20211021_1_Synth_part1.scd".loadPaths;
1.5.wait;

"20211021_2_Task_All.scd".loadPaths;
0.2.wait;
"20211021_1_Synth_part1.scd".loadPaths;
0.2.wait;

~o.play;
};

~r.play;
)

//Pbindef(\part1).play;
//Pbindef(\part1);
//Synth(\part2);
//Synth(\part3_1);
//Synth(\part3_2);
//Synth(\part3_3);

