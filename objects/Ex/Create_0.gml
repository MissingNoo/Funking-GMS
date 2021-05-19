xml = "S.xml"
lastsprite = 10;
#region sprs
sprn="S1"; //estado
S[0] = "S1";
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
	
	//s1
	for (var i=0; i<=lastsprite; i++){ name = S[0]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			S1[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			S1[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			S1[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			S1[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
}
DerpXmlRead_CloseFile() //Fecha o Arquivo
#endregion