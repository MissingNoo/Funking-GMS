// m=0;

currentSprite=GFStates.GFDancingBeat;
now=0;

// if room_get_name(room) == "EnterGame"{ x= 532;  y = 91;}

// DerpXml_Init() //Iniciar XML
// DerpXmlRead_OpenFile(working_directory + "assets/images/GF_assets.xml"); //Carregar XML da sprite
// while DerpXmlRead_Read() {
// 	//Nome da sprite
// 	//if DerpXmlRead_CurGetAttribute("imagePath") != undefined {
// 		//sprfile = working_directory + "assets/images/" + DerpXmlRead_CurGetAttribute("imagePath");
// 		//spr = sprite_add(sprfile,0,false,false,0,0);
// 	//}
	
// 	//Pegar Frames
// 	//GF Dancing Beat
// 	for (var i=0; i<=29; i++){ name = "GF Dancing Beat"
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Dancing_Beat[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Dancing_Beat[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Dancing_Beat[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Dancing_Beat[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
	
// 	//GF Cheer
// 	for (var i=0; i<=20; i++){ name = "GF Cheer";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Cheer[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Cheer[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Cheer[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Cheer[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}
// 	}
	
// 	//GF Dancing Beat Hair Landing
// 	for (var i=0; i<=29; i++){ name = "GF Dancing Beat Hair Landing";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Dancing_Beat_Hair_Landing[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Dancing_Beat_Hair_Landing[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Dancing_Beat_Hair_Landing[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Dancing_Beat_Hair_Landing[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
	
// 	//"GF Down Note"
// 	for (var i=0; i<=19; i++){ name = "GF Down Note";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Down_Note[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Down_Note[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Down_Note[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Down_Note[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
		
// 	//"GF Up Note"
// 	for (var i=0; i<=6; i++){ name = "GF Up Note";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Up_Note[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Up_Note[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Up_Note[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Up_Note[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
	
	
// 	//"GF Right Note"
// 	for (var i=0; i<=14; i++){ name = "GF Right Note";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Right_Note[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Right_Note[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Right_Note[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Right_Note[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
	
	
// 	//"GF Left Note"
// 	for (var i=0; i<=7; i++){ name = "GF left note";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			GF_Left_Note[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			GF_Left_Note[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			GF_Left_Note[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			GF_Left_Note[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
		
// 	/*
// 	//
// 	for (var i=0; i<=99; i++){ name = "";
// 		//ultimo sprite dar break
// 		if DerpXmlRead_CurGetAttribute("name") == undefined { break; }
// 		//maior e menor que 10 mudar os zeros
// 		if i<10 n = name + "000";
// 		if i>=10 n = name + "00";
// 		//se nome for encontrado colocar na array
// 		if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 			[i,0] = DerpXmlRead_CurGetAttribute("x"); //X
// 			[i,1] = DerpXmlRead_CurGetAttribute("y"); //Y
// 			[i,2] = DerpXmlRead_CurGetAttribute("width"); //Largura
// 			[i,3] = DerpXmlRead_CurGetAttribute("height"); //Altura
// 		}		
// 	}
// 	*/
// }
// DerpXmlRead_CloseFile()