Algoritmo AgregarProceso
    // Variables 
    Definir id, prioridad, memoria Como Entero
    Definir nombre Como Cadena
    Definir lista_vacia Como Logico
    
    Escribir "=== REGISTRAR NUEVO PROCESO ==="
    
    // Simulación de lectura y validación de datos
    Escribir "Ingrese el ID del proceso (Solo números positivos):"
    Leer id
    Mientras id <= 0 Hacer
        Escribir "Error. El ID debe ser mayor a 0. Intente de nuevo:"
        Leer id
    FinMientras
    
    Escribir "Ingrese el nombre del proceso (ej: chrome.exe):"
    Leer nombre
    
    Escribir "Ingrese la prioridad (1 = Alta, 2 = Media, 3 = Baja):"
    Leer prioridad
    Mientras prioridad < 1 O prioridad > 3 Hacer
        Escribir "Prioridad inválida. Ingrese 1, 2 o 3:"
        Leer prioridad
    FinMientras
    
    Escribir "Ingrese la memoria requerida en MB:"
    Leer memoria
    
    Escribir "Almacenando datos en el nuevo nodo..."
    
    lista_vacia <- Verdadero 
    
    Si lista_vacia Entonces
        Escribir "La lista estaba vacía. El proceso ", nombre, " ahora es la cabeza de la lista."
    Sino
        Escribir "Recorriendo punteros con bucle Mientras hasta llegar al nodo final..."
        Escribir "Proceso ", nombre, " enlazado correctamente al final de la lista."
    FinSi
    
    Escribir "¡Proceso registrado con éxito!"
FinAlgoritmo