// Example of how to customize your reaction
// to clicks received from Georgios.

\vamusic.addNotifier(\typing, \click, { | n, char |
	char.postln;
	char.ascii.postln;
	// substitute the above with what you want to
	// do instead. for example:
	// (midinote: char.ascii).play;
	(midinote: char.ascii.abs.wrap(20, 100),
		instrument: \flute,
		amp: 0.8
	).play;
})
//:
\izmusic.addNotifier(\typing, \click, { | n, char |
	char.postln;
	char.ascii.postln;
	// substitute the above with what you want to
	// do instead. for example:
	// (midinote: char.ascii).play;

	{(midinote: char.ascii.abs.wrap(20, 100),
		instrument: \default,
		amp: 0.2
	).play}.defer(1.5);
});
//: Run this to deactivate/remove your reaction
\izmusic.removeNotifier(\typing, \click);