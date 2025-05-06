// Example of how to customize your reaction
// to clicks received from Georgios.

\mymusic.addNotifier(\typing, \click, { | n, char |
	char.postln;
	char.ascii.postln;
	// substitute the above with what you want to
	// do instead. for example:
	// (midinote: char.ascii).play;
	(midinote: char.ascii, instrument: \flute).play;
})
