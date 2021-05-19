now=0;
curmotion="spr_BF_NOTE_LEFT000" + string(now);
spr_BF_NOTE_LEFT[0][0] = 0;

DerpXml_Init() //Iniciar XML
DerpXmlRead_OpenFile(working_directory + "assets/images/BOYFRIEND.xml"); //Carregar XML da sprite
while DerpXmlRead_Read() {
	//Nome da sprite
	if DerpXmlRead_CurGetAttribute("imagePath") != undefined {
		sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
		spr = sprite_add(sprfile,0,false,false,0,0);
	}
	
	//Pegar Frames
	for (var i=0; i<=99; i++){ name = "BF NOTE LEFT";
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			spr_BF_NOTE_LEFT[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			spr_BF_NOTE_LEFT[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			spr_BF_NOTE_LEFT[i,2] = DerpXmlRead_CurGetAttribute("frameWidth"); //Largura
			spr_BF_NOTE_LEFT[i,3] = DerpXmlRead_CurGetAttribute("frameHeight"); //Altura
			spr_BF_NOTE_LEFT[99,4] = i;
		}		
	}
}
DerpXmlRead_CloseFile()