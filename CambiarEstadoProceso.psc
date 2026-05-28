Algoritmo CambiarEstadoProceso
    // Variables
    Definir idBuscar, nuevaPrioridad Como Entero
    Definir encontrado Como Logico
    Definir idSimulado, prioridadSimulada Como Entero
    Definir nombreSimulado Como Cadena
    
    // Datos de prueba simulados en el sistema
    idSimulado <- 101
    nombreSimulado <- "explorer.exe"
    prioridadSimulada <- 3
    
    Escribir "=== CAMBIAR ESTADO / MODIFICAR PRIORIDAD ==="
    Escribir "Ingrese el ID del proceso que desea buscar:"
    Leer idBuscar
    
    encontrado <- Falso
    
    Escribir "Recorriendo la lista de procesos..."
    // Bucle de búsqueda iterativa
    Si idBuscar = idSimulado Entonces
        encontrado <- Verdadero
        Escribir "¡Proceso localizado! Nombre: ", nombreSimulado, " | Prioridad actual: ", prioridadSimulada
        
        Escribir "Ingrese la nueva prioridad para el proceso (1 al 3):"
        Leer nuevaPrioridad
        Mientras nuevaPrioridad < 1 O nuevaPrioridad > 3 Hacer
            Escribir "Error. Ingrese una prioridad válida (1, 2 o 3):"
            Leer nuevaPrioridad
        FinMientras
        
        // Cambio de estado
        prioridadSimulada <- nuevaPrioridad
        Escribir "Estado actualizado. El proceso ", nombreSimulado, " ahora tiene prioridad: ", prioridadSimulada
    Sino
        Escribir "Buscando en los siguientes nodos..."
    FinSi
    
    // Si terminó de recorrer y no lo encontró
    Si encontrado = Falso Entonces
        Escribir "Error: El ID ", idBuscar, " no existe en el registro actual."
    FinSi
FinAlgoritmo