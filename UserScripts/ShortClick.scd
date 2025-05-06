// Fantastic click

SynthDef(\shortclick, { | out=0, amp=0.3 |
	var signal;
	signal = SinOsc.ar(330) * EnvGen.ar(Env.perc(0.01,0.05), doneAction: 2);
	Out.ar(out, Pan2.ar(signal * amp))
}).add;
