// Posición y tamaño del área donde caen manzanas (copa del árbol)
// Estos valores los ajustarás cuando tengas el sprite del árbol
ancho_copa = 500;  // Ancho horizontal de la zona de caída
y_copa = y + 100;  // Altura desde donde caen las manzanas (parte alta del árbol)

// Calcular bordes izquierdo y derecho de la copa
copa_izq = x - (ancho_copa / 2);
copa_der = x + (ancho_copa / 2);
