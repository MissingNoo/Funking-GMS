// x= NotesBar.xe+NotesBar.xoffset*2;
// spr = SpritesLoader.Notes;
xml = "NOTE_assets.xml"
ay=y;
spd=global.notespeed;
// spr = SpritesLoader.Notes;
#region sprs
sprn="arrowUp"; //estado
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

	
	//Pegar Frames
	
	if DerpXmlRead_CurGetAttribute("name") == S[3] + "0000" {
		arrow[0,0] = DerpXmlRead_CurGetAttribute("x"); //X
		arrow[0,1] = DerpXmlRead_CurGetAttribute("y"); //Y
		arrow[0,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
		arrow[0,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
	}
}
DerpXmlRead_CloseFile() //Fecha o Arquivo
#endregion