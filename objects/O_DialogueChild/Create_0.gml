/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();


switch(global.signID){

	case "sign1":
		dialog.add(S_Textbox, "Press E to continue reading...");
		dialog.add(S_Textbox, "Use A and D to control left and right...");
		dialog.add(S_Textbox, "Use SPACE to jump across buildings...");
		break;
		
	case "sign2":
		dialog.add(S_Textbox, "Trash has been scattered around main street by litter bugs and lazy bones!!!");
		dialog.add(S_Textbox, "Captain Conifer thinks a great way to give back to your community is by helping keep the place clean...");
		dialog.add(S_Textbox, "Help do your part and clean up main street...");
		break;
		
	case "sign3":
		dialog.add(S_Textbox, "Press SPACE two times to perform a double jump and reach greater heights...");
		break;
		
	case "sign4":
		dialog.add(S_Textbox, "The exit is right there...");
		dialog.add(S_Textbox, "I can't leave with a clear concious till all of main street is clean");
		break;
		
	case "dirty":
		dialog.add(S_Textbox, "This place still needs my help...");
		break;
		
}

