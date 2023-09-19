var _offset = 0;
switch(noteDir){
    case Sprites.noteLeft:
        _offset = 0;
        break;
    case Sprites.noteDown:
        _offset = 1;
        break;
    case Sprites.noteUp:
        _offset = 2;
        break;
    case Sprites.noteRight:
        _offset = 3;
        break;
}
// x = NotesBar.xp + NotesBar.xoffset * _offset;
x = NotesBar.xe + NotesBar.xoffset * _offset;


ay=y;
spd=global.notespeed;
// spr = SpritesLoader.Notes;

#region Internal
m=0;
now=0; //index
#endregion