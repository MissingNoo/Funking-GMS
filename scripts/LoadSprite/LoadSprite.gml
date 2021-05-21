///LoadSprite(sprName)
/// @param {sprName} Name of the Sprite
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadSprite(sprName){
DerpXml_Init() //Iniciar XML
DerpXmlRead_OpenFile(working_directory + "assets/images/" + sprName + ".xml"); //Carregar XML da sprite
while DerpXmlRead_Read() {
	if DerpXmlRead_CurGetAttribute("imagePath") != undefined {
		sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
		return sprite_add(sprfile,0,false,false,0,0);
	}
}
}