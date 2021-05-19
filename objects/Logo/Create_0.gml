now=0;
xs=1;
ys=1;
DerpXml_Init(); //Iniciar XML
DerpXmlRead_OpenFile(working_directory + "assets/images/logoBumpin.xml"); //Carregar XML da sprite
while DerpXmlRead_Read() {
	//Nome da sprite
	if DerpXmlRead_CurGetAttribute("imagePath") != undefined {
		sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
		spr = sprite_add(sprfile,0,false,false,0,0);
	}
	
	//Pegar Frames
	//logo bumpin
	for (var i=0; i<=14; i++){ name = "logo bumpin"
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			logo_bumpin[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			logo_bumpin[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			logo_bumpin[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			logo_bumpin[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
}
DerpXmlRead_CloseFile()