int startx = 150;
int starty = 600;
color c;
color[] colors = {
  color(164,107,189), color(145,86,169), color(191,137,209),
  color(19,34,72), color(36,56,112), color(101,45,135),
  color(234,66,139), color(30,9,60), color(102,47,137),
  color(141,93,164), color(204,178,211), color(234,66,139),
  color(255,255,255)
}; // TWILIGHT COLORS! 

public void setup()
{
  size(800, 800);
  c = colors[int(random(colors.length))];
}

public void draw()
{
  background(204,156,223);
  sierpinski(startx, starty, 500);
}

public void mousePressed()
{
  startx = mouseX;
  starty = mouseY;
  c = colors[int(random(colors.length))];
}

public void sierpinski(int x, int y, int len) {
  int height = int(len * sqrt(3)/2);   
  if (len <= 20) {  
    stroke(c);
    fill(c);
    triangle(x, y, x + len, y, x + len / 2, y-height);
  } else {
    sierpinski(x, y, len/2);                    
    sierpinski(x + len /2, y, len/2);        
    sierpinski(x + len/4, y - height/2,len/ 2);  
  }
}
