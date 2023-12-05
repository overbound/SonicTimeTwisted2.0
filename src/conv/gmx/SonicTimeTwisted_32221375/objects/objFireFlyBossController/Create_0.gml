var flyyoffset = 74;
if objGameData.character_id[0] == 3
flyyoffset = 82;
instance_create(x+480,y+flyyoffset,objFireFly);
block = instance_create(14848,640,objBlock);
with block{
     image_xscale =2;
     image_yscale =24;
     remove=0;
}
state=0;

