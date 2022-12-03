package;

import objects.Ball;

class Main extends hxd.App {

    var bmp  : h2d.Bitmap;
    var ball : objects.Ball = null;
    var scene : scenes.GameScene = null;
    var g : h2d.Graphics = null;
    var game : ng.NGGame = null;


    override function init() {
        var tile = h2d.Tile.fromColor(0x0000FF, 100, 100);
        bmp      = new h2d.Bitmap(tile, s2d);
        bmp.x    = s2d.width * 0.5;
        bmp.y    = s2d.height * 0.5;

        this.ball = new Ball();
        this.g    = new h2d.Graphics(s2d);
        this.game = new ng.NGGame(800,600, "Game Title", this);

        this.game.addEntity(ball);
    }

    override function update(dt:Float) {
        bmp.rotation += 0.1;

        game.update(dt);

        g.clear();
        g.beginFill(0xFFFFFF);
            g.drawRect(ball.x, ball.y, ball.w, ball.h);
        g.endFill();
    }

    static function main() {
        new Main();
    }
}
