/// @description Controlar el avance estricto

// Mouse o teclado
var click_izq = mouse_check_button_pressed(mb_left) 
             || keyboard_check_pressed(ord("Z"));

var click_der = mouse_check_button_pressed(mb_right) 
             || keyboard_check_pressed(ord("X"));


// LÓGICA DE MOVIMIENTO

if (click_izq) 
{
    if (ultimo_click == "libre" || ultimo_click == "derecha") 
    {
        x += avance_por_click;

        ultimo_click = "izquierda";

        sprite_index = spr_tarahumara_1;
    }
}

if (click_der) 
{
    if (ultimo_click == "libre" || ultimo_click == "izquierda") 
    {
        x += avance_por_click;

        ultimo_click = "derecha";

        sprite_index = spr_tarahumara_2;
    }
}