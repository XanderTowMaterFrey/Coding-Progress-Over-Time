function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(51);
  translate(width / 2, height / 2);

  var r = 100;

  for (var a = 0; a < TWO_PI; a += 0.1) {
    var x = r * cos(a);
    var y = r * sin(a);
    point(x, y);
  }
}
