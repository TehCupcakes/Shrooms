/// @description Triggered when resource type is set
/// Use this to set up variables like cost based on resource type
if (shroomType == ShroomType.SHROOMY) {
	shroomSprite = sMushroom
	cost = 1
} else if (shroomType == ShroomType.BLAZE) {
	shroomSprite = BlazeShroom;
	cost = 4;
} else if (shroomType == ShroomType.GOLDEN) {
	shroomSprite = GoldenShroom;
	cost = 10;
} else if (shroomType == ShroomType.SLEEPY) {
	shroomSprite = SleepyShroom;
	cost = 7;
} else if (shroomType == ShroomType.POPPY) {
	shroomSprite = PoppyShroom;
	cost = 8;
} else if (shroomType == ShroomType.TASTY) {
	shroomSprite = Tasty;
	cost = 5;
}
