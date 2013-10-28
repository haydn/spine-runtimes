package spine {

  public class EventData {

    private var _name:String;
    public var intValue:int;;
    public var floatValue:Number;
    public var stringValue:String;
  
    public function EventData (name:String) {
      if (name == null)
        Debug.assert(new ArgumentError("name cannot be null."));
      _name = name;
    }

    public function get name () : String {
      return _name;
    }

    public function toString () : String {
      return _name;
    }

  }

}
