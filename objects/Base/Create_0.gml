xml = "BOYFRIEND.xml" //assets/images/BOYFRIEND.xml
// spr = SpritesLoader.sBase;

#region States
	Idle[0,0] = 0; //Idle Animation
	states[0,0] = "BF idle dance";
	states[0,1] = 13;
	states[1,0] = "Beat";
	states[1,1] = 13;
	state=states[0,0]; //State Now
#endregion

#region Internal
index=0; //Sprite index
#endregion

// #region GetSprites
// 	DerpXml_Init() //Init XML
// 	DerpXmlRead_OpenFile(working_directory + "assets/images/" + xml); //Load XML from assets
// 	while DerpXmlRead_Read() {		
// 		#region State 0
// 		name = states[0,0];
// 		lastsprite = states[0,1]; //How many sprites should be looked for
// 		for (var i=0; i<=lastsprite; i++){ 		
// 			//Break if cant find sprite name
// 			if DerpXmlRead_CurGetAttribute("name") == undefined { break; } 
// 			//As game use 000n for sprite numbers, if less than 10 concatenate "000", else "00" for 00nn
// 			if (i<10) { n = name + "000"; } else { n = name + "00"; }
// 			//If sprite name found, add it to the array of the state
// 			//1=x, 2=y, 3=width, 4=height
// 			if DerpXmlRead_CurGetAttribute("name") == n + string(i) {
// 				Idle[i,0] = DerpXmlRead_CurGetAttribute("x"); 
// 				Idle[i,1] = DerpXmlRead_CurGetAttribute("y"); 
// 				Idle[i,2] = DerpXmlRead_CurGetAttribute("width"); 
// 				Idle[i,3] = DerpXmlRead_CurGetAttribute("height"); 
// 				show_debug_message(Idle[i,0]);
// 				show_debug_message(Idle[i,1]);
// 				show_debug_message(Idle[i,2]);
// 				show_debug_message(Idle[i,3]);
// 			}		
// 		}
// 		#endregion		
// 	}
// 	DerpXmlRead_CloseFile() //Close XML
#endregion