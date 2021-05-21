xml = "FNF_main_menu_assets.xml"
basic = 7;
white = 2;
selected=0;
spr = SpritesLoader.FNF_main_menu_assets;
#region sprs
sprn="story mode basic"; //estado
S[0] = "story mode basic";
S[1] = "story mode white";
S[2] = "freeplay basic";
S[3] = "freeplay white";
S[4] = "donate basic";
S[5] = "donate white";
#endregion

#region Internal
m=0;
now=0; //index
noww=0;
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
	
	//Story
	for (var i=0; i<=basic; i++){ name = S[0]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			Story[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			Story[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			Story[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			Story[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
	for (var i=0; i<=white; i++){ name = S[1]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			StoryW[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			StoryW[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			StoryW[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			StoryW[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
	
	//Free
	for (var i=0; i<=basic; i++){ name = S[2]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			Free[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			Free[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			Free[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			Free[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
	for (var i=0; i<=white; i++){ name = S[3]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			FreeW[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			FreeW[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			FreeW[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			FreeW[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
	
	//Donate
	for (var i=0; i<=basic; i++){ name = S[4]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			Donate[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			Donate[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			Donate[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			Donate[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
	for (var i=0; i<=white; i++){ name = S[5]
		//ultimo sprite dar break
		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
		//maior e menor que 10 mudar os zeros
		if i<10 n = name + "000";
		if i>=10 n = name + "00";
		//se nome for encontrado colocar na array
		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
			DonateW[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
			DonateW[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
			DonateW[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
			DonateW[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
		}		
	}
}
DerpXmlRead_CloseFile() //Fecha o Arquivo
#endregion