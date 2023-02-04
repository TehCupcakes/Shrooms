/// @description Triggered when resource type is set
/// Use this to set up variables like cost based on resource type
if (shroomType == ShroomType.SHROOMY) {
	shroomSprite = sMushroom
	cost = 1
} else if (shroomType == ShroomType.BLAZE) {
	shroomSprite = BlazeShroom;
	cost = 2;
}
