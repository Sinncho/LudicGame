contador += 1;

// Pausar TODO mientras se muestra la instrucción
instance_deactivate_all(true);  // true = mantener este objeto activo

// Controlar el parpadeo
contador_parpadeo += 1;
if (contador_parpadeo >= ciclo_parpadeo)
{
    contador_parpadeo = 0;
    visible_ahora = !visible_ahora;
}

// Cuando se acabe el tiempo, reactivar todo y destruirse
if (contador >= duracion_total)
{
    instance_activate_all();
    instance_destroy();
}