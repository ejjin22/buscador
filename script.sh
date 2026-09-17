cadena="$1"
carpeta="$2"

# Valida si se paso una carpeta como argumento
if [ $# -eq 0 ]; then 
	echo "No ingreso ningún argumento"
        exit 1
fi

#Checa si hay mas de dos parametros
if [ $# -gt 2 ]; then
        echo "Solo se requieren 2 parametros, intentelo de nuevo"
        exit 1
fi

#Verificamos si ingreso algo en carpeta
if [ $# -eq 1 ]; then
        res="$(grep -rH "$cadena" /home)"
else
        if [ -d "$carpeta" ]; then
                res="$(grep -rH "$cadena" "$carpeta")"
        else
                echo "La carpeta ingresada no existe"
                exit 1
fi
#Checamos si hay alguna coincidencia
if [ -z "$res" ]; then
	echo "No se encontro ninguna coincidencia"
	exit 1
fi

echo "$res"
