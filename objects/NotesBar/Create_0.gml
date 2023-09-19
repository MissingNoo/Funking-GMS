 xml = "NOTE_assets.xml";
 lastsprite = 10;
 x=39;
 xe=39;
 y=144;
 xp=600;
 arrowDOWN[0,3]=0;
 xoffset=130;
 sprite = spr[Sprites.notes];
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
 DerpXml_Init();
 DerpXmlRead_OpenFile(working_directory + "assets/images/" + xml); //Carregar XML da sprite
 while (DerpXmlRead_Read()) {
 	if (DerpXmlRead_CurGetAttribute("name") == S[0] + "0000") {
 		arrowDOWN[0,0] = DerpXmlRead_CurGetAttribute("x");
 		arrowDOWN[0,1] = DerpXmlRead_CurGetAttribute("y");
 		arrowDOWN[0,2] = DerpXmlRead_CurGetAttribute("width");
 		arrowDOWN[0,3] = DerpXmlRead_CurGetAttribute("height");
 	}
 	if (DerpXmlRead_CurGetAttribute("name") == S[3] + "0000") {
 		arrowUP[0,0] = DerpXmlRead_CurGetAttribute("x");
 		arrowUP[0,1] = DerpXmlRead_CurGetAttribute("y");
 		arrowUP[0,2] = DerpXmlRead_CurGetAttribute("width"); 
 		arrowUP[0,3] = DerpXmlRead_CurGetAttribute("height"); 
 	}
 	if (DerpXmlRead_CurGetAttribute("name") == S[1] + "0000") {
 		arrowLEFT[0,0] = DerpXmlRead_CurGetAttribute("x");
 		arrowLEFT[0,1] = DerpXmlRead_CurGetAttribute("y");
 		arrowLEFT[0,2] = DerpXmlRead_CurGetAttribute("width");
 		arrowLEFT[0,3] = DerpXmlRead_CurGetAttribute("height");
 	}
 	if (DerpXmlRead_CurGetAttribute("name") == S[2] + "0000") {
 		arrowRIGHT[0,0] = DerpXmlRead_CurGetAttribute("x");
 		arrowRIGHT[0,1] = DerpXmlRead_CurGetAttribute("y");
 		arrowRIGHT[0,2] = DerpXmlRead_CurGetAttribute("width");
 		arrowRIGHT[0,3] = DerpXmlRead_CurGetAttribute("height");
 	}
 }
 DerpXmlRead_CloseFile();
 #endregion