package
{

  import loom.Application;

  import spine.Event;
  import spine.SkeletonData;
  // import spine.SkeletonJson;
  // import spine.animation.AnimationStateData;
  // import spine.atlas.Atlas;
  // import spine.attachments.AtlasAttachmentLoader;
  // import spine.flash.SingleTextureLoader;
  // import spine.flash.SkeletonAnimation;

  public class SpineLoom extends Application
  {

    // [Embed(source = "spineboy.atlas", mimeType = "application/octet-stream")]
    // static public const SpineboyAtlas:Class;
    // 
    // [Embed(source = "spineboy.png")]
    // static public const SpineboyAtlasTexture:Class;
    // 
    // [Embed(source = "spineboy.json", mimeType = "application/octet-stream")]
    // static public const SpineboyJson:Class;
    // 
    // private var skeleton:SkeletonAnimation;

    override public function run():void
    {
      // var atlas:Atlas = new Atlas(new SpineboyAtlas(), new SingleTextureLoader(new SpineboyAtlasTexture()));
      // var json:SkeletonJson = new SkeletonJson(new AtlasAttachmentLoader(atlas));
      // var skeletonData:SkeletonData = json.readSkeletonData(new SpineboyJson());
      // 
      // var stateData:AnimationStateData = new AnimationStateData(skeletonData);
      // stateData.setMixByName("walk", "jump", 0.2);
      // stateData.setMixByName("jump", "walk", 0.4);
      // stateData.setMixByName("jump", "jump", 0.2);
      // 
      // skeleton = new SkeletonAnimation(skeletonData, stateData);
      // skeleton.x = 320;
      // skeleton.y = 420;
      // 
      // skeleton.state.onStart = function (trackIndex:int) : void {
      //   trace(trackIndex + " start: " + skeleton.state.getCurrent(trackIndex));
      // };
      // skeleton.state.onEnd = function (trackIndex:int) : void {
      //   trace(trackIndex + " end: " + skeleton.state.getCurrent(trackIndex));
      // };
      // skeleton.state.onComplete = function (trackIndex:int, count:int) : void {
      //   trace(trackIndex + " complete: " + skeleton.state.getCurrent(trackIndex) + ", " + count);
      // };
      // skeleton.state.onEvent = function (trackIndex:int, event:Event) : void {
      //   trace(trackIndex + " event: " + skeleton.state.getCurrent(trackIndex) + ", "
      //     + event.data.name + ": " + event.intValue + ", " + event.floatValue + ", " + event.stringValue);
      // };
      // 
      // if (true) {
      //   skeleton.state.setAnimationByName(0, "drawOrder", true);
      // } else {
      //   skeleton.state.setAnimationByName(0, "walk", true);
      //   skeleton.state.addAnimationByName(0, "jump", false, 3);
      //   skeleton.state.addAnimationByName(0, "walk", true, 0);
      // }
      // 
      // addChild(skeleton);
    }

  }

}
