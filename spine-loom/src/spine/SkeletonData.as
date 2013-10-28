package spine {

  import spine.animation.Animation;

  public class SkeletonData {

    public var name:String;
    public var bones:Vector.<BoneData> = new Vector.<BoneData>(); // Ordered parents first.
    public var slots:Vector.<SlotData> = new Vector.<SlotData>(); // Setup pose draw order.
    public var skins:Vector.<Skin> = new Vector.<Skin>();
    public var defaultSkin:Skin;
    public var events:Vector.<EventData> = new Vector.<EventData>();
    public var animations:Vector.<Animation> = new Vector.<Animation>();

    // --- Bones.

    public function addBone (bone:BoneData) : void {
      if (bone == null)
        Debug.assert(new ArgumentError("bone cannot be null."));
      bones.push(bone);
    }

    /** @return May be null. */
    public function findBone (boneName:String) : BoneData {
      if (boneName == null)
        Debug.assert(new ArgumentError("boneName cannot be null."));
      for (var i:int = 0, n:int = bones.length; i < n; i++) {
        var bone:BoneData = bones[i];
        if (bone._name == boneName)
          return bone;
      }
      return null;
    }

    /** @return -1 if the bone was not found. */
    public function findBoneIndex (boneName:String) : int {
      if (boneName == null)
        Debug.assert(new ArgumentError("boneName cannot be null."));
      for (var i:int = 0, n:int = bones.length; i < n; i++)
        if (bones[i]._name == boneName)
          return i;
      return -1;
    }

    // --- Slots.

    public function addSlot (slot:SlotData) : void {
      if (slot == null)
        Debug.assert(new ArgumentError("slot cannot be null."));
      slots.push(slot);
    }

    /** @return May be null. */
    public function findSlot (slotName:String) : SlotData {
      if (slotName == null)
        Debug.assert(new ArgumentError("slotName cannot be null."));
      for (var i:int = 0, n:int = slots.length; i < n; i++) {
        var slot:SlotData = slots[i];
        if (slot._name == slotName)
          return slot;
      }
      return null;
    }

    /** @return -1 if the bone was not found. */
    public function findSlotIndex (slotName:String) : int {
      if (slotName == null)
        Debug.assert(new ArgumentError("slotName cannot be null."));
      for (var i:int = 0, n:int = slots.length; i < n; i++)
        if (slots[i]._name == slotName)
          return i;
      return -1;
    }

    // --- Skins.

    public function addSkin (skin:Skin) : void {
      if (skin == null)
        Debug.assert(new ArgumentError("skin cannot be null."));
      skins.push(skin);
    }

    /** @return May be null. */
    public function findSkin (skinName:String) : Skin {
      if (skinName == null)
        Debug.assert(new ArgumentError("skinName cannot be null."));
      for each (var skin:Skin in skins)
        if (skin._name == skinName)
          return skin;
      return null;
    }
  
    // --- Events.
  
    public function addEvent (eventData:EventData) : void {
      if (eventData == null)
        Debug.assert(new ArgumentError("eventData cannot be null."));
      events.push(eventData);
    }
  
    /** @return May be null. */
    public function findEvent (eventName:String) : EventData {
      if (eventName == null)
        Debug.assert(new ArgumentError("eventName cannot be null."));
      for (var i:int = 0, n:int = events.length; i < n; i++) {
        var eventData:EventData = events[i];
        if (eventData.name == eventName)
          return eventData;
      }
      return null;
    }
  
    // --- Animations.
  
    public function addAnimation (animation:Animation) : void {
      if (animation == null)
        Debug.assert(new ArgumentError("animation cannot be null."));
      animations.push(animation);
    }
  
    /** @return May be null. */
    public function findAnimation (animationName:String) : Animation {
      if (animationName == null)
        Debug.assert(new ArgumentError("animationName cannot be null."));
      for (var i:int = 0, n:int = animations.length; i < n; i++) {
        var animation:Animation = animations[i];
        if (animation.name == animationName)
          return animation;
      }
      return null;
    }

    // ---

    public function toString () : String {
      return name != null ? name : super.toString();
    }

  }

}
