depth = 0;

// Empieza arriba con tamaño pequeño
y_inicial = 100;
y = y_inicial;

// Escala inicial
escala = 0.2;

// Velocidad de acercamiento
velocidad = 3;

// Posición horizontal: aleatoria DENTRO del carril en el horizonte
if (instance_exists(obj_lineas_fuga))
{
    var lineas = obj_lineas_fuga;
    
    // Rango en el horizonte (carril estrecho arriba)
    var izq_horizonte = lineas.fuga_x - lineas.ancho_horizonte + 10;
    var der_horizonte = lineas.fuga_x + lineas.ancho_horizonte - 10;
    
    x_inicial = irandom_range(izq_horizonte, der_horizonte);
    x = x_inicial;
    
    // Calcular X destino en la base (siguiendo el ángulo del carril)
    var proporcion = (x_inicial - lineas.fuga_x) / lineas.ancho_horizonte;
    
    var izq_base = lineas.margen_base;
    var der_base = room_width - lineas.margen_base;
    var ancho_base_mitad = (der_base - izq_base) / 2;
    
    x_destino = lineas.fuga_x + (proporcion * ancho_base_mitad);
}
else
{
    // Fallback si no hay líneas de fuga
    x_inicial = room_width / 2;
    x = x_inicial;
    x_destino = x_inicial;
}

// Tamaño máximo
tamano_base = 80;