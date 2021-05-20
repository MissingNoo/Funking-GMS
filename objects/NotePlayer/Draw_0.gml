/// @description Insert description here
// You can write your code in this editor
draw_sprite_general(spr,0,
	arrowLEFT[now,0],
	arrowLEFT[now,1],
	arrowLEFT[now,2],
	arrowLEFT[now,3],ax,ay,.75,.75,0,c_white,c_white,c_white,c_white,1);
	
draw_sprite_general(spr,0,
	arrowDOWN[now,0],
	arrowDOWN[now,1],
	arrowDOWN[now,2],
	arrowDOWN[now,3],ax+xoffset,ay,.75,.75,0,c_white,c_white,c_white,c_white,1);
	
draw_sprite_general(spr,0,
	arrowUP[now,0],
	arrowUP[now,1],
	arrowUP[now,2],
	arrowUP[now,3],ax+xoffset*2,ay,.75,.75,0,c_white,c_white,c_white,c_white,1);
	
draw_sprite_general(spr,0,
	arrowRIGHT[now,0],
	arrowRIGHT[now,1],
	arrowRIGHT[now,2],
	arrowRIGHT[now,3],ax+xoffset*3,ay,.75,.75,0,c_white,c_white,c_white,c_white,1);