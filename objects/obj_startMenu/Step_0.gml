/// @description Moving in the menu
menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menuIndex += menuMove;
if (menuIndex < 0) menuIndex = buttons - 1;
if (menuIndex > buttons - 1) menuIndex = 0;

lastSelected = menuIndex;
