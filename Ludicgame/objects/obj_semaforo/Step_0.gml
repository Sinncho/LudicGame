// Si está en rojo, ir bajando el contador
if (estado == "rojo")
{
    contador -= 1;
    
    // Cuando llegue a 0, cambiar a verde
    if (contador <= 0)
    {
        estado = "verde";
    }
}