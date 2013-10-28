package spine {

  public class Event {

    private var _data:EventData;
    public var intValue:int;;
    public var floatValue:Number;
    public var stringValue:String;

    public function Event (data:EventData) {
      if (data == null)
        Debug.assert(new ArgumentError("data cannot be null."));
      _data = data;
    }

    public function get data () : EventData {
      return _data;
    }

    public function toString () : String {
      return _data.name;
    }

  }

}
