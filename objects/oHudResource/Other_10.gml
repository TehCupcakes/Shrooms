/// @description Triggered when resource type is set
/// Use this to set up variables like cost based on resource type
if (shroomType == ShroomType.SHROOMY) {
	shroomSprite = sMushroom
	cost = 2
} else if (shroomType == ShroomType.BLAZE) {
	shroomSprite = BlazeShroom;
	cost = 4;
} else if (shroomType == ShroomType.GOLDEN) {
	shroomSprite = GoldenShroom;
	cost = 10;
} else if (shroomType == ShroomType.SLEEPY) {
	shroomSprite = SleepyShroom;
	cost = 7;
}
