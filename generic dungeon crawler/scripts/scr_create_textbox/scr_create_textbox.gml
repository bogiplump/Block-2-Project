///@description scr_create_textbox
///@arg text
///@arg speakers
function scr_create_textbox(_text, _speakers){
	var tbox = instance_create_layer(0, 0, "Text", obj_text_box);
	
	with(tbox){
			for(var i = 0; i < array_length_1d(_text); i++){
				names[i] = _speakers[i].name;
			}
			
	}
	
	return tbox;
}