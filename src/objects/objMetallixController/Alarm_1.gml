with objMetallixLaser {
   reaction = player_reaction_harmful;
   reaction_script = reaction;
}
platform[0]=instance_create(x,y+100,objMetallixPlatform);
platform[1]=instance_create(x,y+16,objMetallixPlatform);
with platform[0] { state = 1;}
with platform[1] { state = 2;}
if objGameData.character_id[0] == 3 {
    platform[2]=instance_create(x,y+48,objMetallixPlatform);        
    with platform[2] { state = 3; }
    
    platform[3]=instance_create(x,y-32,objMetallixPlatform);        
    with platform[3] { state = 4; }
}

