
Walker [] group1;
Walker2 [] group2;
Walker3 [] group3;
Walker4 [] group4;
Walker5 [] group5;
Walker6 [] group6;
Walker7 [] group7;


void setup(){
  size(800, 800);
  
  //group 1(eyeLeft)
  group1 = new Walker[200];
  int i = 0;
  while(i < 200){
    group1[i] = new Walker();
    i++;
  }
  
  //group 2(eyeRight)
  group2 = new Walker2[200];
  int n = 0;
  while(n < 200){
    group2[n] = new Walker2();
    n++;
  }
  
  //group 3(outline)
  group3 = new Walker3[1000];
  int m = 0;
  while(m < 1000){
    group3[m] = new Walker3();
    m++;
  }
  

  
   //group 4
   group4 = new Walker4[200];
   int j = 0;
   while(j < 200){
     group4[j] = new Walker4();
     j++;
   }   
   
   //group 5
   group5 = new Walker5[200];
   int l = 0;
   while(l < 200){
     group5[l] = new Walker5();
     l++;
   }
   
   //group 6
   group6 = new Walker6[200];
   int k = 0;
   while(k < 200){
     group6[k] = new Walker6();
     k++;
   }
  
  //group 7
  group7 = new Walker7[200];
  int h = 0;
  while(h < 200){
    group7[h] = new Walker7();
    h++;
  }
}

void draw(){
  background(0);  
 
 //group 1 (eyeLeft)
  for(int i = 0; i < group1.length; i++){
    group1[i].walk();
    group1[i].show();
  }
  //group 2 (eyeRight)
  for(int n = 0; n < group2.length; n++){
    group2[n].walk2();
    group2[n].show2();
  }
  //group 3 (background)
  for(int m = 0; m < group3.length; m++){
   group3[m].walk3();
    group3[m].show3();
  }
  
  
  //group 4 (right center die)
  for(int j = 0; j < group4.length; j++){
   group4[j].walk4();
    group4[j].show4();
  }
  //group 5 (left center die)
  for(int l = 0; l < group5.length; l++){
    group5[l].walk5();
    group5[l].show5();
  }
  //group 6 (left bottom die)
  for(int k = 0; k < group6.length; k++){
    group6[k].walk6();
    group6[k].show6();
  }
  //group 7 (right bottom die)
  for(int h = 0; h < group7.length; h++){
    group7[h].walk7();
    group7[h].show7();
  }

}


/////////////////////////////////////////////~~~~~~WALK1
class Walker{
  int myX, myY;
  Walker(){
    myX = 800;
    myY = 800;
  }
  
 int circleX = 300;
 int circleY = 200;
 int rad = 10;
 boolean a = false;

  void checkCircle(){
    //calculate distance
    double d;
    d = (Math.sqrt( ((circleX - myX)*(circleX - myX)) + ((circleY - myY)*(circleY - myY)) ) );
    
    while (d <= rad){
      a = true;
    }
    if (d > rad) {
      a = false;
    }
  }
  
void walk(){

 if (a == true){
   myX = myX + (int)(Math.random()*11)-5;
   myY = myY + (int)(Math.random()*11)-5;
 } else if (a == false){
   //evaluate which side further from circle200,200 it is
   
   if(myX < 275){
     myX = myX + (int)(Math.random()*30)-10;
   } else if (myX > 325){
      myX = myX + (int)(Math.random()*30)-20;
   } else{
     myX = myX + (int)(Math.random()*20)-10;
   }
   
   if(myY < 175){
     myY = myY + (int)(Math.random()*30)-10;
   } else if (myY > 225){
      myY = myY + (int)(Math.random()*30)-20;
   } else{
     myY = myY + (int)(Math.random()*20)-10;
   }   
 }    
}

 
  void show(){
    fill(150, (myY/4), (myX/4));
    ellipse(myX, myY, 10, 10);
  }
}

/////////////////////////////////////////////~~~~~~WALK1 END


/////////////////////////////////////////////~~~~~WALK2
class Walker2{
  int myX2, myY2;
  Walker2(){
    myX2 = 0;
    myY2 = 800;
  }
  
 int circleX2 = 500;
 int circleY2 = 200;
 int rad = 10;
 boolean a2 = false;

  void checkCircle2(){
    //calculate distance
    double d2;
    d2 = (Math.sqrt( ((circleX2 - myX2)*(circleX2 - myX2)) + ((circleY2 - myY2)*(circleY2 - myY2)) ) );
    
    while (d2 <= rad){
      a2 = true;
    }
    if (d2 > rad) {
      a2 = false;
    }
  }
  
void walk2(){

 if (a2 == true){
   myX2 = myX2 + (int)(Math.random()*11)-5;
   myY2 = myY2 + (int)(Math.random()*11)-5;
 } else if (a2 == false){
   //evaluate which side further from circle400,200 it is
   
   if(myX2 < 475){
     myX2 = myX2 + (int)(Math.random()*30)-10;
   } else if (myX2 > 525){
      myX2 = myX2 + (int)(Math.random()*30)-20;
   } else{
     myX2 = myX2 + (int)(Math.random()*20)-10;
   }
   
   if(myY2 < 175){
     myY2 = myY2 + (int)(Math.random()*30)-10;
   } else if (myY2 > 225){
      myY2 = myY2 + (int)(Math.random()*30)-20;
   } else{
     myY2 = myY2 + (int)(Math.random()*20)-10;
   }   
 }
    
}

 
void show2(){
    fill(150, (myX2/4), (myY2/4));
    ellipse(myX2, myY2, 10, 10);
  }
}
/////////////////////////////////////////////~~~~~WALK2 END



/////////////////////////////////////////////~~~~~WALK3
class Walker3{
  
  int myX3, myY3;
  int myColor;
  
  Walker3(){
    myX3 = myY3 = 400;
    myColor = color(255, 255, 255, 200);
  }
  
 int circleX3 = 500;
 int circleY3 = 200;
 int rad = 10;
 boolean a3 = false;

  void checkCircle3(){
    //calculate distance
    double d3;
    d3 = (Math.sqrt( ((circleX3 - myX3)*(circleX3 - myX3)) + ((circleY3 - myY3)*(circleY3 - myY3)) ) );
    
    while (d3 <= rad){
      a3 = true;
    }
    if (d3 > rad) {
      a3 = false;
    }
  }
  
  void walk3(){

 if (a3 == true){
   
   
  myX3 = myX3 + (int)(Math.random()*11)-5;
  myY3 = myY3 + (int)(Math.random()*11)-5;
   
   
 } else if (a3 == false){
   //evaluate which side further from circle400,200 it is
   
   if(myX3 < 100){
     myX3 = myX3 + (int)(Math.random()*30)-10;
   } else if (myX3 > 700){
      myX3 = myX3 + (int)(Math.random()*30)-20;
   } else{
     myX3 = myX3 + (int)(Math.random()*21)-10;
   }
   
   if(myY3 < 100){
     myY3 = myY3 + (int)(Math.random()*30)-10;
   } else if (myY3 > 700){
      myY3 = myY3 + (int)(Math.random()*30)-20;
   } else{
     myY3 = myY3 + (int)(Math.random()*21)-10;
   }   
 }
}   
 
void show3(){
  if(myX3 > 650){
    //top right corner
    fill(myColor);
    ellipse(myX3, myY3, 10, 10);
  } else if (myY3 > 650){
    fill(myColor);
    ellipse(myX3, myY3, 10, 10);
  } else if (myX3 < 125){
    fill(myColor);
    ellipse(myX3, myY3, 10, 10);
  } else if (myY3 < 125){
    fill(myColor);
    ellipse(myX3, myY3, 10, 10);
  }
  
  else { 
    fill(255, 255, 255, 100);
    ellipse(myX3, myY3, 10, 10);
  } 
 }    
}
  
/////////////////////////////////////////////~~~~~WALK3 END


/////////////////////////////////////////////~~~~~WALK4
class Walker4{
  int myX4, myY4;
  Walker4(){
    myX4 = 0;
    myY4 = 600;
  }
  
 int circleX4 = 500;
 int circleY4 = 400;
 int rad = 10;
 boolean a4 = false;

  void checkCircle4(){
    //calculate distance
    double d4;
    d4 = (Math.sqrt( ((circleX4 - myX4)*(circleX4 - myX4)) + ((circleY4 - myY4)*(circleY4 - myY4)) ) );
    
    while (d4 <= rad){
      a4 = true;
    }
    if (d4 > rad) {
      a4 = false;
    }
  }
  
  void walk4(){

 if (a4 == true){
   myX4 = myX4 + (int)(Math.random()*11)-5;
   myY4 = myY4 + (int)(Math.random()*11)-5;
 } else if (a4 == false){
   //evaluate which side further from circle400,200 it is
   
   if(myX4 < 475){
     myX4 = myX4 + (int)(Math.random()*30)-10;
   } else if (myX4 > 525){
      myX4 = myX4 + (int)(Math.random()*30)-20;
   } else{
     myX4 = myX4 + (int)(Math.random()*20)-10;
   }
   
   if(myY4 < 375){
     myY4 = myY4 + (int)(Math.random()*30)-10;
   } else if (myY4 > 425){
      myY4 = myY4 + (int)(Math.random()*30)-20;
   } else{
     myY4 = myY4 + (int)(Math.random()*20)-10;
   }   
 }  
}
 
void show4(){
    fill(150, (myX4/4), (myY4/4));
    ellipse(myX4, myY4, 10, 10);
  }
}
/////////////////////////////////////////////~~~~~WALK4 END



/////////////////////////////////////////////~~~~~WALK6
class Walker5{
  int myX5, myY5;
  Walker5(){
    myX5 = 800;
    myY5 = 600;
  }
  //edited circle + start
  
 int circleX5 = 300;
 int circleY5 = 400;
 int rad = 10;
 boolean a5 = false;

  void checkCircle5(){
    //calculate distance
    double d5;
    d5 = (Math.sqrt( ((circleX5 - myX5)*(circleX5 - myX5)) + ((circleY5 - myY5)*(circleY5 - myY5)) ) );
    
    while (d5 <= rad){
      a5 = true;
    }
    if (d5 > rad) {
      a5 = false;
    }
  }
  
 void walk5(){

 if (a5 == true){
   myX5 = myX5 + (int)(Math.random()*11)-5;
   myY5 = myY5 + (int)(Math.random()*11)-5;
 } else if (a5 == false){
   
   if(myX5 < 275){
     myX5 = myX5 + (int)(Math.random()*30)-10;
   } else if (myX5 > 325){
      myX5 = myX5 + (int)(Math.random()*30)-20;
   } else{
     myX5 = myX5 + (int)(Math.random()*20)-10;
   }
   
   if(myY5 < 375){
     myY5 = myY5 + (int)(Math.random()*30)-10;
   } else if (myY5 > 425){
      myY5 = myY5 + (int)(Math.random()*30)-20;
   } else{
     myY5 = myY5 + (int)(Math.random()*20)-10;
   }   
 }    
}

void show5(){
    fill(150, (myX5/4), (myY5/4));
    ellipse(myX5, myY5, 10, 10);
  }
}
/////////////////////////////////////////////~~~~~WALK5 END


/////////////////////////////////////////////~~~~~WALK6
class Walker6{
  int myX6, myY6;
  Walker6(){
    myX6 = 800;
    myY6 = 0;
  }
  
 int circleX6 = 300;
 int circleY6 = 600;
 int rad = 10;
 boolean a6 = false;

  void checkCircle5(){
    //calculate distance
    double d6;
    d6 = (Math.sqrt( ((circleX6 - myX6)*(circleX6 - myX6)) + ((circleY6 - myY6)*(circleY6 - myY6)) ) );
    
    while (d6 <= rad){
      a6 = true;
    }
    if (d6 > rad) {
      a6 = false;
    }
  }
  
 void walk6(){

 if (a6 == true){
   myX6 = myX6 + (int)(Math.random()*11)-5;
   myY6 = myY6 + (int)(Math.random()*11)-5;
 } else if (a6 == false){
   
   if(myX6 < 275){
     myX6 = myX6 + (int)(Math.random()*30)-10;
   } else if (myX6 > 325){
      myX6 = myX6 + (int)(Math.random()*30)-20;
   } else{
     myX6 = myX6 + (int)(Math.random()*20)-10;
   }
   
   if(myY6 < 575){
     myY6 = myY6 + (int)(Math.random()*30)-10;
   } else if (myY6 > 625){
      myY6 = myY6 + (int)(Math.random()*30)-20;
   } else{
     myY6 = myY6 + (int)(Math.random()*20)-10;
   }   
 }
}
 
void show6(){
    fill(150, (myX6/4), (myY6/4));
    ellipse(myX6, myY6, 10, 10);
  }
}

/////////////////////////////////////////////~~~~~WALK6 END

/////////////////////////////////////////////~~~~~WALK7
class Walker7{
  int myX7, myY7;
  Walker7(){
    myX7 = 0;
    myY7 = 0;
  }
  
 int circleX7 = 500;
 int circleY7 = 600;
 int rad = 10;
 boolean a7 = false;

  void checkCircle7(){
    //calculate distance
    double d7;
    d7 = (Math.sqrt( ((circleX7 - myX7)*(circleX7 - myX7)) + ((circleY7 - myY7)*(circleY7 - myY7)) ) );
    
    while (d7 <= rad){
      a7 = true;
    }
    if (d7 > rad) {
      a7 = false;
    }
  }
  
 void walk7(){

 if (a7 == true){
   myX7 = myX7 + (int)(Math.random()*11)-5;
   myY7 = myY7 + (int)(Math.random()*11)-5;
 } else if (a7 == false){
   
   if(myX7 < 475){
     myX7= myX7 + (int)(Math.random()*30)-10;
   } else if (myX7 > 525){
      myX7 = myX7 + (int)(Math.random()*30)-20;
   } else{
     myX7 = myX7 + (int)(Math.random()*20)-10;
   }
   
   if(myY7 < 575){
     myY7 = myY7 + (int)(Math.random()*30)-10;
   } else if (myY7 > 625){
      myY7 = myY7 + (int)(Math.random()*30)-20;
   } else{
     myY7 = myY7 + (int)(Math.random()*20)-10;
   }   
 }
}

void show7(){
    fill(150, (myX7/4), (myY7/4));
    ellipse(myX7, myY7, 10, 10);
  }
}

/////////////////////////////////////////////~~~~~WALK7 END
 
