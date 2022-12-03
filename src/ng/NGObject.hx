package ng;

import ng.NGBasic;

/**
  Most classes in NGIN should extend this class.
  **/
class NGObject extends NGBasic
{
    /**
      The x position of the object **/
    public var x : Float = 0;

    /**
      The x position of the object **/
    public var y : Float = 0;

    /**
      The width of the object **/
    public var w : Float = 10;

    /**
      The height of the object **/
    public var h : Float = 10;

    /**
      The x direction **/
    public var dx : Float = 1;

    /**
      The y direction **/
    public var dy : Float = 1;

    public function new()
    {
        super();
    }

    /**
      Base update method that should be overriden **/
    public function update(dt:Float) {}
}
