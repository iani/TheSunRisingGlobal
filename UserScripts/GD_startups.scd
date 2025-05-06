var typing;

typing = {
	var model, controller, tsr;
	tsr = Document("The Sun Rising");
	tsr.keyDownAction = { | sender, char |
		\typing.changed(\click, char.asCompileString);
		User.sendCode(
			format("\\typing.changed(\\click, %)", char.asCompileString)
		);
	};
};

BALC.init;
User doAfterActivate: {
	{
		BALC.globalizeBufs;
		SynthDef(\shortclick, { | out=0, amp=0.3 |
			var signal;
			signal = SinOsc.ar(330) *
			EnvGen.ar(Env.perc(0.01,0.05),
				doneAction: 2);
			Out.ar(out, Pan2.ar(signal * amp))
		}).add;
		typing.value;
	}.defer(5)
};
User.enable("the_sun_rising2", 5, \iani, \geodia, \vasilis, \kosmas, \penny);
// Server.default.boot;