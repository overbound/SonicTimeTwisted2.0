var instanceCount = random(2);
var xos = random(objScreen.width); //whatever was set in objScreen.width (426 *or* 320 if the 4:3 mode is enabled)
var i = 0;
var yof=580;
//if objGameData.character_id[0] == 3 yof =288;
do {
    instance_create(x-300+xos+(128*i),y-yof,objBossPlatform); //340
    i+=1;
    
} until (instanceCount < i)
alarm[0]=32//+random(16); //40
/*var instanceCount = random(2);
var xos = random(objScreen.width); //426
var i = 0;
var yof=640;
if objGameData.character_id[0] == 3 yof =288;
do{
    instance_create(x-300+xos+(128*i),y-yof,objBossPlatform); //340
    i+=1;
    
} until (instanceCount < i)
alarm[0]=16+random(16); //40*/

/* */
/*  */
