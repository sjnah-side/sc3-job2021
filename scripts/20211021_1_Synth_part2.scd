(
SynthDef(\part2,
	{| freq1 = 440, freq2 = 440, amp = 1.0, dur = 1.0, atk = 0.3, rls =  0.2 |
	var env, sig, sig1, sig2;

	env = EnvGen.kr(Env.perc(attackTime: atk, releaseTime: rls, level: 1.0, curve: -4.0), gate: 1, timeScale: dur, doneAction: 2);

	sig1 = {CombC.ar(Mix(SinOsc.ar(LFNoise2.kr(1.dup(4)*0.1,freq1,[1,2]*freq1))*0.01),0.2,[0.13,0.2],15,mul: 1.0)};
	sig2 = SinOsc.ar(freq: freq2, mul: 0.1);
	sig = (sig1*3+sig2*3)*env*amp;

	Out.ar(0, sig!2);
	}).add;
)
