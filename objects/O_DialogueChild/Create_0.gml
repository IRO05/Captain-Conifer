/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();


switch(global.signID){

	case "sign1":
		dialog.add(S_EarthPortrait, "Press E to continue reading...");
		dialog.add(S_EarthPortrait, "Use A and D to control left and right...");
		dialog.add(S_EarthPortrait, "Use SPACE to jump across buildings...");
		break;
		
	case "sign2":
		dialog.add(S_EarthPortrait, "Trash has been scattered around main street by litter bugs and lazy bones!!!");
		dialog.add(S_EarthPortrait, "Captain Conifer thinks a great way to give back to your community is by helping keep the place clean...");
		dialog.add(S_EarthPortrait, "Help do your part and clean up main street by pressing E to grab trash...");
		break;
		
	case "sign3":
		dialog.add(S_EarthPortrait, "Press SPACE two times to perform a double jump and reach greater heights...");
		break;
		
	case "sign4":
		dialog.add(S_EarthPortrait, "The exit is right there...");
		dialog.add(S_EarthPortrait, "I can't leave with a clear concious till all of main street is clean");
		break;
		
	case "dirty":
		dialog.add(S_EarthPortrait, "This place still needs my help...");
		break;
		
	case "2sign1":
		dialog.add(S_WaterPortrait, "Thanks to water pollution all these poor ducklings are covered in oil...");
		dialog.add(S_WaterPortrait, "Find soap around the board walk and pick it up by pressing E...");
		dialog.add(S_WaterPortrait, "Drop the soap on the ducklings by pressing E again...");
		break;
		
	case "3sign1":
		dialog.add(S_AirPortrait, "Toxic air pollution has caused smog monsters to pop up everywhere...");
		dialog.add(S_AirPortrait, "Use the Carbon Capture technology vacuum by pressing F to capture them and clean the air...");
		break;

	case "exit":
		dialog.add(S_EarthPortrait, "Thank you for playing...");
		break;
}

