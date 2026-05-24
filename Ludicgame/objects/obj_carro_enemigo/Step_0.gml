show_debug_message("=== INICIO STEP ===");

// PASO 1: ¿Existe el controller?
if (instance_exists(obj_carro_controller))
{
    show_debug_message("Controller existe. bloquear_input=" + string(obj_carro_controller.bloquear_input));
    
    if (obj_carro_controller.bloquear_input && !arrancado)
    {
        show_debug_message("BLOQUEADO - salgo del step");
        exit;
    }
}
else
{
    show_debug_message("NO existe controller");
}

// PASO 2: ¿Existe el semáforo?
if (instance_exists(obj_semaforo))
{
    show_debug_message("Semaforo existe. estado=" + string(obj_semaforo.estado));
    
    if (obj_semaforo.estado == "verde" && !arrancado)
    {
        show_debug_message("ENTRANDO al contador. valor antes: " + string(contador_ventana));
        contador_ventana += 1;
        show_debug_message("Contador despues: " + string(contador_ventana) + " / ventana_frames=" + string(ventana_frames));
        
        if (contador_ventana >= ventana_frames)
        {
            show_debug_message("ARRANCANDO!");
            arrancado = true;
            global.minijuego_ganado = false;
            
            if (instance_exists(obj_carro_controller))
            {
                obj_carro_controller.bloquear_input = true;
                obj_carro_controller.terminar = true;
            }
        }
    }
    else
    {
        show_debug_message("NO entré al contador porque estado=" + string(obj_semaforo.estado) + " o arrancado=" + string(arrancado));
    }
}
else
{
    show_debug_message("NO existe semaforo");
}

// PASO 3: Movimiento
if (arrancado)
{
    show_debug_message("MOVIENDO carro");
    x += mov_x;
    y += mov_y;
}

show_debug_message("=== FIN STEP ===");