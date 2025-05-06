// Sample code for sending verse changes.

\poem.changed(\verse, nil)

User.sendCode( format("\\poem.changed(\\verse, %)", ~number) );


// musicians should add actions accordingly, like this:
\izverse.addNotifier(\poem, \vers, { | n, num |
	postln("verse changed" + num);
});
