xml = "NOTE_assets.xml"
lastsprite = 10;
ax=500;
ay=144;
xoffset=130
spr = SpritesLoader.Notes;
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
	//if DerpXmlRead_CurGetAttribute("imagePath") != undefined {
		//sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
		//spr = sprite_add(sprfile,0,false,false,0,0);
	//}
	
	//Pegar Frames
	
	//arrowDOWN
	if DerpXmlRead_CurGetAttribute("name") == S[0] + "0000" {
		arrowDOWN[0,0] = DerpXmlRead_CurGetAttribute("x"); //X
		arrowDOWN[0,1] = DerpXmlRead_CurGetAttribute("y"); //Y
		arrowDOWN[0,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
		arrowDOWN[0,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
	}
	if DerpXmlRead_CurGetAttribute("name") == S[3] + "0000" {
		arrowUP[0,0] = DerpXmlRead_CurGetAttribute("x"); //X
		arrowUP[0,1] = DerpXmlRead_CurGetAttribute("y"); //Y
		arrowUP[0,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
		arrowUP[0,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
	}
	if DerpXmlRead_CurGetAttribute("name") == S[1] + "0000" {
		arrowLEFT[0,0] = DerpXmlRead_CurGetAttribute("x"); //X
		arrowLEFT[0,1] = DerpXmlRead_CurGetAttribute("y"); //Y
		arrowLEFT[0,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
		arrowLEFT[0,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
	}
	if DerpXmlRead_CurGetAttribute("name") == S[2] + "0000" {
		arrowRIGHT[0,0] = DerpXmlRead_CurGetAttribute("x"); //X
		arrowRIGHT[0,1] = DerpXmlRead_CurGetAttribute("y"); //Y
		arrowRIGHT[0,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
		arrowRIGHT[0,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
	}
}
DerpXmlRead_CloseFile() //Fecha o Arquivo
#endregion