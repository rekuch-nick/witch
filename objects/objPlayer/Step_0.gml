if(gotoStart){
	var sp = instance_find(objStart, 0);
	pc.x = sp.x; pc.y = sp.y;
	gotoStart = false;
}

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
if(castCD > 0){ ws = 0; }
if(holdingBlock){ ws = 0; }
xSpeed = ws * xIn;
ySpeed = ws* yIn;

if(xPush != 0){
	xSpeed = xPush;
	if(xPush > 0){ xPush --; }
	if(xPush < 0){ xPush ++; }
}
if(yPush != 0){
	ySpeed = yPush;
	if(yPush > 0){ yPush --; }
	if(yPush < 0){ yPush ++; }
}



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




if(!skipInFrame){





	if(pressedRoll && rollCD < 1 && chopCD < 1 && castCD < 1){
		rollCD = rollCDMax;
		rollTime = rollPower;
	}
	//if(!holdingRoll && rollTime > 0){ rollTime = 0; }


	if(pressedChop && chopCD < 1 && castCD < 1){
		rollTime = 0;
		chopCD = chopCDMax;
		instance_create_depth(x, y, -2000, objShotPlayer);
	}
	
	if(pressedCast && castCD < 1 && chopCD < 1 && mp >= subCost){
		mp -= subCost;
		rollTime = 0;
		castCD = castCDMax;
		if(subWeapon == imgBomb){ instance_create_depth(x, y, -2000, objBombPlayer); }
	}

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
if(castCD > 0){ castCD --; }
if(hurtTime > 0){ hurtTime --; }
skipInFrame = false;
if(hp < hpMax){ hp = clamp(hp + hpHeal, 0, hpMax); }
if(mp < mpMax){ mp = clamp(mp + mpHeal, 0, mpMax); }



if(rollTime > 0 && (xSpeed != 0 || ySpeed != 0) ){
	image_angle += facing * -20;
	rollTime --;
} else {
	image_angle = 0;
}



var f = imgPlayerStanding;
if(xSpeed != 0 || ySpeed != 0){ f = imgPlayerWalking; }
if(chopCD > 0){ f = imgPlayerChopping; }
if(castCD > 0){ f = imgPlayerCasting; }
if(blockTime > 0){ f = imgPlayerBlocking; }
if(hurtTime > 0){ f = imgPlayerHurt; }
sprite_index = f;
