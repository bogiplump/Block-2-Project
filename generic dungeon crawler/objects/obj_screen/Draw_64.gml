/// @description 

draw_sprite(UI_itemSlots, 0, 640, 140);

if global.flower_is_collected draw_sprite(UI_item_flower, 0, 513, 13);
if global.water_is_collected draw_sprite(UI_item_water, 0, 548, 12);
if global.honey_is_collected draw_sprite(UI_item_honey, 0, 581, 12);