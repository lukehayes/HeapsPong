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
        this.x += this.dx * this.speed / 2 * dt;
        this.y += this.dy * this.speed * dt;

        if(this.x < 0 || this.x > 600)
        {
            this.dx = -this.dx;
        }

        if(this.y < 0 || this.y > 600)
        {
            this.dy = -this.dy;
        }
    }

}
