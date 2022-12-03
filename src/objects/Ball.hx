package objects;

import ng.NGObject;

class Ball extends NGObject
{
    public function new()
    {
        super();
    }

    override public function update(dt:Float) 
    {
        this.x += 100 * dt;
        this.y += 100 * dt;
    }
}
