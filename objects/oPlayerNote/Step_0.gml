NoteStep();
if (canHit) switch(noteDir){
    case Sprites.noteLeft:
        if(keyboard_check_pressed(vk_left)){
        	instance_destroy();
        }
        break;
    case Sprites.noteDown:
        if(keyboard_check_pressed(vk_down)){
        	instance_destroy();
        }
        break;
    case Sprites.noteUp:
        if(keyboard_check_pressed(vk_up)){
        	instance_destroy();
        }
        break;
    case Sprites.noteRight:
        if(keyboard_check_pressed(vk_right)){
        	instance_destroy();
        }
        break;
}