// El estado visual inicial
sprite_index = spr_disco_0;
image_index = 0;

// Contamos cuántos ítems buenos se generaron en el room para saber cuándo ganar
// Usamos alarm para dar 1 frame de tiempo a que los Obj_Spawn creen los objetos
total_buenos_inicial = 0;
buenos_en_disco = 0;
alarm[0] = 1;