spr[Sprites.logo] = LoadSprite("logoBumpin");
spr[Sprites.logo_frames] = load_sprite_frames("logoBumpin", "logo bumpin");
#region Girlfriend
spr[Sprites.girlfriend] = LoadSprite("GF_assets");
var gfframes = ["GF Dancing Beat", "GF Cheer", "GF Dancing Beat Hair Landing", "GF Down Note", "GF Up Note", "GF Right Note", "GF left Note"];
for (i = 0; i < array_length(gfframes); i++) {
    spr[Sprites.gfFrames][i] = load_sprite_frames("GF_assets", gfframes[i]);
}
// show_message(spr[Sprites.gfFrames]);
#endregion
#region Menu Sprites
spr[Sprites.mainmenu] = LoadSprite("FNF_main_menu_assets");
spr[Sprites.mainmenuSprites][menuSprites.storyMode][0] = load_sprite_frames("FNF_main_menu_assets", "story mode basic");
// show_message(spr[Sprites.mainmenuSprites][menuSprites.storyMode][0]);
spr[Sprites.mainmenuSprites][menuSprites.storyMode][1] = load_sprite_frames("FNF_main_menu_assets", "story mode white");
// show_message(spr[Sprites.mainmenuSprites][menuSprites.storyMode][1]);
spr[Sprites.mainmenuSprites][menuSprites.freePlay][0] = load_sprite_frames("FNF_main_menu_assets", "freeplay basic");
// show_message(spr[Sprites.mainmenuSprites][menuSprites.freePlay][0]);
spr[Sprites.mainmenuSprites][menuSprites.freePlay][1] = load_sprite_frames("FNF_main_menu_assets", "freeplay white");
// show_message(spr[Sprites.mainmenuSprites][menuSprites.freePlay][1]);
spr[Sprites.mainmenuSprites][menuSprites.donate][0] = load_sprite_frames("FNF_main_menu_assets", "donate basic");
// show_message(spr[Sprites.mainmenuSprites][menuSprites.donate][0]);
spr[Sprites.mainmenuSprites][menuSprites.donate][1] = load_sprite_frames("FNF_main_menu_assets", "donate white");
// show_message(spr[Sprites.mainmenuSprites][menuSprites.donate][1]);
#endregion
spr[Sprites.notes] = LoadSprite("NOTE_assets");
#region Note Sprites
spr[Sprites.noteLeft]   = sprite_note_info("arrowLEFT");
spr[Sprites.noteDown]   = sprite_note_info("arrowDOWN");
spr[Sprites.noteUp]     = sprite_note_info("arrowUP");
spr[Sprites.noteRight]  = sprite_note_info("arrowRIGHT");
#endregion

sBase = LoadSprite("BOYFRIEND");
room_goto_next();