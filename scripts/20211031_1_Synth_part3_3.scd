(
SynthDef(\part3_3,
	{ | in = 440, amp = 1.0, dur = 1.0 |
		var sig, filt, env;
		sig = GrayNoise.ar(0.3);
		filt = RLPF.ar(sig, in, rq: [0.2,0.3], mul: 1.0);
		env = EnvGen.kr(Env.perc(), doneAction: Done.freeSelf);
		sig = filt * env * amp;
		Out.ar(0, sig);
}).add;
)