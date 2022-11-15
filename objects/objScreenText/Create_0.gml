event_inherited();

f = instance_create_depth(128, 64, depth, objTalkFace);

line = 1;

display = getStory(pc.scene, line);
display.msg = stringInsertBreaks(display.msg);
f.sprite_index = display.pic;

cursor = 0;
cursorMax = array_length(display.rsp);


inputReady = false;