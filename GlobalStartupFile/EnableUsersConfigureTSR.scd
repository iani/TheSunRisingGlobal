//:水 23  4 2025 11:57
//Prepare performance of The Sun Rising for ICLC25
//Enable User session and activate users:
// \iani :: Iannis Zannos
// \geodia :: Georgios Diapoulis
// \vasilis :: Basileios Agiomyrianakis
// \kosmas :: Cosmas Giannoutakis
// \penny :: Panagiota Anastasopoulou
// Defer the enable by 5 seconds to ensure that startup scripts
// loaded locally will not beforwarded to other users.
// We also create and activate all 5 users for this session in the same method call:

BALC.init;
User doAfterActivate: {
	BALC.globalizeBufs;
	{ postln("\n\nThe user is: " + User.localId + "\n\n"); } ! 10;
};
// NOTE: Must delay at least 1 second for sclang to get the list
// of existing scel documents. Otherwise it keeps creating
// user buffers, even if they previously exist
User.enable("the_sun_rising2", 5, \iani, \geodia, \vasilis, \kosmas, \penny);
// Server.default.boot;