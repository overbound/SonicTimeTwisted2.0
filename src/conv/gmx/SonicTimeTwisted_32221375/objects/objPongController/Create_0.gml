paddle[0]=instance_create(x,y+338,objPaddle);
paddle[1]=instance_create(x,y-352,objPaddleTop);
paddle[0].parent = self;
paddle[1].parent = self;
switchButton[0]=instance_create(x-64,y,objPaddleSwitch);
with switchButton[0] { controller = other.id; }
switchButton[1]=instance_create(x+64,y,objPaddleSwitch);
with switchButton[1] { controller = other.id; }
switchCount = 0;

