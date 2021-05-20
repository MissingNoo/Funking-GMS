x=39;

xml = "NOTE_assets.xml"
ay=644;
spd=global.notespeed;
xoffset=130
#region sprs
sprn="arrowDOWN"; //estado
S[0] = "arrowDOWN";
S[1] = "arrowLEFT";
S[2] = "arrowRIGHT";
S[3] = "arrowUP";
#endregion

#region Internal
m=0;
now=0; //index
#endregion



#region GetSprites
DerpXml_Init() //Iniciar XML
DerpXmlRead_OpenFile(working_directory + "assets/images/" + xml); //Carregar XML da sprite
while DerpXmlRead_Read() {
	//Nome da sprite
	if DerpXmlRead_CurGetAttribute("imagePath") != undefined {
		sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
		spr = sprite_add(sprfile,0,false,false,0,0);
	}
	
	//Pegar Frames
	
	if DerpXmlRead_CurGetAttribute("name") == S[1] + "0000" {
		arrow[0,0] = DerpXmlRead_CurGetAttribute("x"); //X
		arrow[0,1] = DerpXmlRead_CurGetAttribute("y"); //Y
		arrow[0,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
		arrow[0,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
	}
}
DerpXmlRead_CloseFile() //Fecha o Arquivo
#endregion