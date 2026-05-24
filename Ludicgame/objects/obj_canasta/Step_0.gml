// Si terminó, no procesar
if (instance_exists(obj_manzana_controller))
{
    if (obj_manzana_controller.terminar)
    {
        exit;
    }
}

// La canasta sigue al mouse en X
x = mouse_x;

// Limitar al ancho del árbol con un margen extra
if (instance_exists(obj_arbol))
{
    var arbol = obj_arbol;
    var margen_extra = 60;  // Permite moverse 60 px más allá del árbol
    
    var limite_izq = arbol.copa_izq - margen_extra + (ancho / 2);
    var limite_der = arbol.copa_der + margen_extra - (ancho / 2);
    
    if (x < limite_izq) x = limite_izq;
    if (x > limite_der) x = limite_der;
}