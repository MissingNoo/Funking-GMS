global.sprites = [];
#macro spr global.sprites
global.bpm = 1;
enum Sprites {
    logo,
    logo_frames,
    girlfriend,
    gfFrames,
    mainmenu,
    mainmenuSprites,
    notes,
    noteLeft,
    noteDown,
    noteUp,
    noteRight,
}
enum GFStates {
    GFDancingBeat,
    GFCheer,
    GFDancingBeatHairLanding,
    GFDownNote,
    GFUpNote,
    GFRightNote,
    GFleftNote,
}
enum menuSprites {
	storyMode,
	freePlay,
	donate,
}