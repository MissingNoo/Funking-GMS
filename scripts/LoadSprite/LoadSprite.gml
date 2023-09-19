///LoadSprite(sprName)
/// @param String {sprName} Name of the Sprite
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadSprite(sprName){
DerpXml_Init(); //Iniciar XML
DerpXmlRead_OpenFile(working_directory + "assets/images/" + sprName + ".xml"); //Carregar XML da sprite
while (DerpXmlRead_Read()) {
	if (DerpXmlRead_CurGetAttribute("imagePath") != undefined) {
		sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
		return sprite_add(sprfile,0,false,false,0,0);
	}
}
}

function sprite_note_info(direction){
	var arrow;
	DerpXml_Init();
	DerpXmlRead_OpenFile(working_directory + "assets/images/NOTE_assets.xml");
	while (DerpXmlRead_Read()) {
		if (DerpXmlRead_CurGetAttribute("name") == direction + "0000") {
			arrow[0][0] = DerpXmlRead_CurGetAttribute("x");
			arrow[0][1] = DerpXmlRead_CurGetAttribute("y");
			arrow[0][2] = DerpXmlRead_CurGetAttribute("width");
			arrow[0][3] = DerpXmlRead_CurGetAttribute("height");
		}
	}
	DerpXmlRead_CloseFile();
	return arrow;
}

function load_sprite_frames(spriteXml, spriteName){
	DerpXml_Init();
	DerpXmlRead_OpenFile(working_directory + "assets/images/" + spriteXml + ".xml");
	var result = [];
	var n;
	while (DerpXmlRead_Read()){
		for (var i=0; i<=99; i++){
			if (DerpXmlRead_CurGetAttribute("name") == undefined) { break; }
			if (i<10) n = spriteName + "000";
			if (i>=10) n = spriteName + "00";
			if (DerpXmlRead_CurGetAttribute("name") == n + string(i)) {
				result[i][0] = DerpXmlRead_CurGetAttribute("x");
				result[i][1] = DerpXmlRead_CurGetAttribute("y");
				result[i][2] = DerpXmlRead_CurGetAttribute("width");
				result[i][3] = DerpXmlRead_CurGetAttribute("height");
			}
		}
	}
	DerpXmlRead_CloseFile();
	return result;
}