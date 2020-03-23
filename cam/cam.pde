import java.lang.*;
import processing.video.*;
import cvimage.*;
import org.opencv.core.*;
import org.opencv.imgproc.Imgproc;

Capture cam;
CVImage img, auximg;
boolean [] move = new boolean[6];
PImage imageRight, imageLeft, imageMouse, imageEnter;
float colorIntensity;
float blurIntesity;
boolean pause;
PFont font1;
int flag;
int step;

void setup() {
  size(1280, 480);
  //Cámara
  cam = new Capture(this, width/2, height);
  cam.start(); 

  System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
  println(Core.VERSION);
  pause = true;
  loadImages();
  font1 = loadFont("OCRAExtended-48.vlw");
  img = new CVImage(cam.width, cam.height);
  auximg=new CVImage(cam.width, cam.height);
  colorIntensity =180;
  blurIntesity = 1;
  flag = 0;
}

void draw() {  
  if (pause) {
    background(0);
    textFont(font1, 25);
    image(imageLeft, 70, 70, 80, 50);
    text("Change filter ", 170, 100 );

    image(imageRight, 70, 150, 80, 50);
    text("Change filter ", 170, 180 );

    image(imageMouse, 70, 230, 80, 50);
    text("Increase or decrease intensity of filters", 170, 260 );

    image(imageEnter, 70, 300, 80, 50);
    text("Press Enter to resume o pause", 170, 330 );

  } else {
    if (cam.available()) {
      background(0);
      cam.read();

      //obtencion de la imagen de la camara
      img.copy(cam, 0, 0, cam.width, cam.height, 
        0, 0, img.width, img.height);
      img.copyTo();

      auximg.copy(cam, 0, 0, cam.width, cam.height, 
        0, 0, img.width, img.height);
      auximg.copyTo();


      noTint();
      image(img, 0, 0);
      colorIntensity =255*mouseX/width;
      blurIntesity = 70*mouseX/width +1;

      if (flag == 0) {
        Mat mat1 = img.getGrey();
        Mat mat2 = new Mat();
        Imgproc.blur(mat1, mat2, new Size(blurIntesity, blurIntesity));
        Imgproc.Canny(mat2, mat1, 10, 30);
        auximg.copyTo(mat1);
        image(auximg, cam.width, 0);
      }

      if (flag == 1) {
        tint(colorIntensity, 0, 0);
        image(auximg, width/2, 0);
      }
      if (flag == 2) {
        tint(0, colorIntensity, 0);
        image(auximg, width/2, 0);
      }
      if (flag == 3) {
        tint(0, 0, colorIntensity);
        image(auximg, width/2, 0);
      }
    }
  }
}

void loadImages() {
  imageRight = loadImage("./image/right.png");
  imageLeft = loadImage("./image/left.png");
  imageMouse = loadImage("./image/mouse.png");
  imageEnter = loadImage("./image/enter.png");
}



void keyPressed() {
  if (keyCode == ENTER) pause = !pause;
  if (key == CODED) {   
    if (keyCode == RIGHT) {
      flag +=1;
      if (flag > 3) flag = 0;
    }
    if (keyCode == LEFT) {
      flag -=1;
      if (flag < 0) flag = 3;
    }
  }
}
