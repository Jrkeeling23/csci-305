// Dart: implements the interactivity and dynamic behavior of the web app

import 'dart:html';
import 'dart:math' as math;
import 'dart:async';

CanvasElement canvas; // 1) reference canvas element 
CanvasRenderingContext2D ctx; // 2) 2D context object for it
Ball ball;

class Ball {
  // values for start location of ball, start speed, and velocities as well
  double x = 50;
  double y = 50;
  double r = 15;
  double vx = 0;
  double vy = 0;
  Ball(this.x, this.y, this.r, this.vx, this.vy);
}

void main() {
  canvas = querySelector('#canvas'); // canvas reference
  ctx = canvas.getContext('2d'); // indicates a 2d drawing
  ball = new Ball(50, 50, 15, 0, 0);
	new Timer.periodic(new Duration(milliseconds:16), render);  
  canvas.onClick.listen(getSum); 
}

void render(_){
  ctx.clearRect(0,0, canvas.width, canvas.height);
  ctx.fillStyle = "rgba(100, 255, 200, .5)";
  ctx.fillRect(0, 0, canvas.width, canvas.height);
  ctx.restore();
  // 1 - apply velocity to position (vx -> x) 
  ball.x += ball.vx;
  ball.y += ball.vy; 
  // 2 - apply drag/friction to velocity 
  ball.vx *= .99;
  ball.vy *= .99; 
  // 3 - apply gravity to velocity 
  ball.vy += .25;
  ball.vx += .25;
  // 4 - check for collisions
  if (ball.y + ball.r > canvas.height) { 
		ball.y = canvas.height - ball.r; 
		ball.vy = - (ball.vy).abs(); 
	} 
  if (ball.x + ball.r > canvas.width) { 
		ball.x = canvas.width - ball.r; 
		ball.vx =- (ball.vx).abs(); 
	} 
  // draw ball
  ctx.save(); // creates save and overwrite of previous 
  ctx.translate(ball.x, ball.y);
  ctx.fillStyle = "#ffff00";
  ctx.beginPath();
  ctx.arc(0,0, ball.r, 0, math.pi*2, true);
  ctx.closePath();
  ctx.fill();
  ctx.restore();   
}

void getSum(MouseEvent event){
  // offset grabs 'event' (click) location.
	ball.x = event.offset.x;
  ball.y = event.offset.y;
}
 