(
SynthDef(\part3_2,
	{ | freq = #[200,671,1153,1723], ring = #[1,1,1,1], constant = 5, atk = 0.5, rel = 1.5 |
		var sig, env, noise;
		noise = Impulse.ar(constant);
		sig = Klank.ar(`[freq, nil, ring], Decay.ar(noise, 0.05, ClipNoise.ar(0.05)));
		env = EnvGen.kr(Env.perc(atk, rel, 1.0, -5.0), doneAction: 2);
		sig = sig*env;
		Out.ar(0, sig!2);
}).add;
)