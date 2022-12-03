package ng;

/**
  Base class for the NGIN framework
  **/
class NGGame
{
    /**
      Width of the main game window.
      **/
    var width  : Int;

    /**
      Height of the main game window.
      **/
    var height : Int;

    /**
      Title of the main game window.
      **/
    var title  : String;

    /**
      Instance of Heaps App class.
      **/
    var app  : hxd.App;

    /**
      Array of all of the entities available
      **/
    var entities : Array<NGObject>;

    public function new(width:Int, height:Int, title:String, app:hxd.App)
    {
        this.width  = width;
        this.height = height;
        this.title  = title;
        this.app = app;
        this.entities = new Array<NGObject>();
    }

    public function addEntity(entity:NGObject)
    {
        this.entities.push(entity);
    }

    public function update(dt:Float) {
        trace("Updating Game");

        for(e in this.entities)
        {
            e.update(dt);
        }
    }
}
