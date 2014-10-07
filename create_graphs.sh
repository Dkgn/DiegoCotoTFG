#!/bin/bash
# Utiliza el programa netgen_executable para crear un grafo por cada archivo de parametros situado en ./Data
# El output se guardara en archivos de texto en el directorio ./input_graphs. Si este directorio no existe, sera creado
# La posicion relativa de los directorios debe mantenerse
# Pueden quitarse y añadirse archivos de ./Data
# Estos archivos pueden tener cualquier nombre
# No debe haber ningun archivo en ./Data que no sea un archivo de parametros para NETGEN

mkdir -p input_graphs                                               # Crea el directorio de destino
cd ./Data                                                           # Se mueve al directorio donde estan los datos
for graph in *; do                                                  # Itera sobre los archivos del directorio de datos
    echo "Creating input graph from $graph"                         # Muestra en la terminal el mensaje de progreso
    ../netgen_executable < ./$graph > ../input_graphs/$graph.txt    # Ejecuta la orden requerida
done