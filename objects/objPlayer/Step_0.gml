playerGetInput();
if(instance_number(objScreen) > 0){ return; }



if(talk){
	instance_create_depth(0, 0, -8999, objScreenText);
	
	talk = false;
}




if(facing > 0){
	if(image_xscale < 0){ image_xscale *= -1; }
} else {
	if(image_xscale > 0){ image_xscale *= -1; }
}

var ws = walkSpeed;
if(rollTime > 0){ ws += 4; }
if(chopCD > 0){ ws = 0; }
if(holdingBlock){ ws = 0; }
xSpeed = ws * xIn;
ySpeed = ws* yIn;

if(xSpeed != 0 && ySpeed != 0){
	xSpeed = floor(xSpeed * .75);
	ySpeed = floor(ySpeed * .75);
}

x += xSpeed;
var dir = xSpeed > 0 ? 1 : -1;
while(playerInBlock(3 - dir)){
	x += -dir;
}



y += ySpeed;
var dir = ySpeed > 0 ? 1 : -1;
while(playerInBlock(2 + dir)){
	y += -dir;
}










if(pressedRoll && rollCD < 1 && chopCD < 1){
	rollCD = rollCDMax;
	rollTime = rollPower;
}
//if(!holdingRoll && rollTime > 0){ rollTime = 0; }


if(pressedChop && chopCD < 1){
	rollTime = 0;
	chopCD = chopCDMax;
	instance_create_depth(x, y, -2000, objShotPlayer);
}


if(holdingBlock && blockTime < blockTimeMax && canBlock && rollTime < 1 && chopCD < 1){
	blockTime ++;
} else {
	blockTime = 0;
	canBlock = false;
}

if(!holdingBlock){ canBlock = true; }





if(rollCD > 0){ rollCD --; }
if(chopCD > 0){ chopCD --; }





if(rollTime > 0 && (xSpeed != 0 || ySpeed != 0) ){
	image_angle += facing * -20;
	rollTime --;
} else {
	image_angle = 0;
}



var f = imgPlayerStanding;
if(xSpeed != 0 || ySpeed != 0){ f = imgPlayerWalking; }
if(chopCD > 0){ f = imgPlayerChopping; }
if(blockTime > 0){ f = imgPlayerBlocking; }
sprite_index = f;
