depth = -100;




xIn = 0; yIn = 0; facing = 1;
xLast = 1; yLast = 0;

xSpeed = 0; ySpeed = 0;
xPush = 0; yPush = 0;
skipInFrame = true;

walkSpeed = 8;
xFat = 30;
yFat = 30;


holdingRoll = false;
pressedRoll = false;

rollTime = 0;
rollPower = 20;
rollCD = 0;
rollCDMax = 25;


holdingChop = false;
pressedChop = false;
chopCD = 0;
chopCDMax = 15;


holdingBlock = false;
pressedBlock = false;
blockTime = 0;
blockTimeMax = 30;
canBlock = true;

holdingStart = false;
pressedStart = false;

scene = 1;
talk = true;
gotoStart = true;


hurtTime = 0;
hurtTimeMax = 30;
xPush = 0; yPush = 0;

messageListMax = 20;
for(var i=0; i<messageListMax; i++){
	messageList[i] = "";
}


hpMax = 1000;
hp = hpMax;
hpHeal = .2;

mpMax = 1000;
mp = mpMax;
mpHeal = .5;



holdingCast = false;
pressedCast = false;
subWeapon = imgBomb;
castCD = 0;
castCDMax = 15;
subCost = 500;