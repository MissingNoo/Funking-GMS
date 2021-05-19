/// @description Insert description here
// You can write your code in this editor
switch (sprn) {
    case GF[0]:
        draw_sprite_general(spr,0,
			GF_Dancing_Beat[now,0],
			GF_Dancing_Beat[now,1],
			GF_Dancing_Beat[now,2],
			GF_Dancing_Beat[now,3],x,y,1,1,0,c_white,c_white,c_white,c_white,1);
        break;
	case GF[1]:
		draw_sprite_part(spr,0,
			GF_Cheer[now,0],
			GF_Cheer[now,1],
			GF_Cheer[now,2],
			GF_Cheer[now,3],x,y);
		break;
	case GF[2]:
		draw_sprite_part(spr,0,
			GF_Dancing_Beat_Hair_Landing[now,0],
			GF_Dancing_Beat_Hair_Landing[now,1],
			GF_Dancing_Beat_Hair_Landing[now,2],
			GF_Dancing_Beat_Hair_Landing[now,3],x,y);
		break;
	case GF[3]:
		draw_sprite_part(spr,0,
			GF_Down_Note[now,0],
			GF_Down_Note[now,1],
			GF_Down_Note[now,2],
			GF_Down_Note[now,3],x,y);
		break;
	case GF[4]:
		draw_sprite_part(spr,0,
			GF_Up_Note[now,0],
			GF_Up_Note[now,1],
			GF_Up_Note[now,2],
			GF_Up_Note[now,3],x,y);
		break;
	case GF[5]:
		draw_sprite_part(spr,0,
			GF_Right_Note[now,0],
			GF_Right_Note[now,1],
			GF_Right_Note[now,2],
			GF_Right_Note[now,3],x,y);
		break;
	case GF[6]:
		draw_sprite_part(spr,0,
			GF_Left_Note[now,0],
			GF_Left_Note[now,1],
			GF_Left_Note[now,2],
			GF_Left_Note[now,3],x,y);
		break;
}
/*
draw_sprite_part(spr,0,
	GF_Dancing_Beat[now,0],
	GF_Dancing_Beat[now,1],
	GF_Dancing_Beat[now,2],
	GF_Dancing_Beat[now,3],x,y);