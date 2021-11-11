
(
SynthDef(\part3_1,
	{ | freq = #[200,671,1153,1723], ring = #[1,1,1,1], atk = 0.5, rel = 1.5 |
		var sig, env;
		sig = Klank.ar(`[freq, nil, ring], PinkNoise.ar(0.025));
		env = EnvGen.kr(Env.perc(atk, rel, 1.0, -5.0), doneAction: 2);
		sig = sig*env;
		Out.ar(0, sig!2);
}).add;
)