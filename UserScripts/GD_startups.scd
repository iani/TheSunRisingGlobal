var typing;

typing = {
	var model, controller, tsr;
	tsr = Document("The Sun Rising");
	model = Ref(0);
	controller = SimpleController(model);
	controller.put(\value,
		{|theChanger, what, moreArgs|
			User.sendCode("Synth(\\shortclick)");
			Synth(\shortclick);
		});
	tsr.keyDownAction = { arg ...args; model.value_(args[4]).changed(\value);  };
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
	}.defer(5)
};
User.enable("the_sun_rising2", 5, \iani, \geodia, \vasilis, \kosmas, \penny);
Server.default.boot;