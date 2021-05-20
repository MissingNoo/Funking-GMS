if keyboard_check_pressed(vk_up) y=ay
y=y-spd;
if y <= NoteEnemy.ay {
	instance_destroy(self);
}