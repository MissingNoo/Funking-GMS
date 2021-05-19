/// @description Insert description here
// You can write your code in this editor

switch (selected) {
    case 0:
		//story
        draw_sprite_general(spr,0,
			StoryW[now,0],
			StoryW[now,1],
			StoryW[now,2],
			StoryW[now,3],x,y,1,1,0,c_white,c_white,c_white,c_white,1);
		//Free
        draw_sprite_general(spr,0,
			Free[now,0],
			Free[now,1],
			Free[now,2],
			Free[now,3],x,y+100,1,1,0,c_white,c_white,c_white,c_white,1);
		//story
        draw_sprite_general(spr,0,
			Donate[now,0],
			Donate[now,1],
			Donate[now,2],
			Donate[now,3],x,y+200,1,1,0,c_white,c_white,c_white,c_white,1);
        break;
	case 1:
		//story
        draw_sprite_general(spr,0,
			Story[now,0],
			Story[now,1],
			Story[now,2],
			Story[now,3],x,y,1,1,0,c_white,c_white,c_white,c_white,1);
		//Free
        draw_sprite_general(spr,0,
			FreeW[now,0],
			FreeW[now,1],
			FreeW[now,2],
			FreeW[now,3],x,y+100,1,1,0,c_white,c_white,c_white,c_white,1);
		//story
        draw_sprite_general(spr,0,
			Donate[now,0],
			Donate[now,1],
			Donate[now,2],
			Donate[now,3],x,y+200,1,1,0,c_white,c_white,c_white,c_white,1);
        break;
	case 2:
		//story
        draw_sprite_general(spr,0,
			Story[now,0],
			Story[now,1],
			Story[now,2],
			Story[now,3],x,y,1,1,0,c_white,c_white,c_white,c_white,1);
		//Free
        draw_sprite_general(spr,0,
			Free[now,0],
			Free[now,1],
			Free[now,2],
			Free[now,3],x,y+100,1,1,0,c_white,c_white,c_white,c_white,1);
		//story
        draw_sprite_general(spr,0,
			DonateW[now,0],
			DonateW[now,1],
			DonateW[now,2],
			DonateW[now,3],x,y+200,1,1,0,c_white,c_white,c_white,c_white,1);
        break;
}