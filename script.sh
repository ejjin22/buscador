cadena="$1"
carpeta="$2"

# Valida si se paso una carpeta como argumento
if [ $# -eq 0 ]; then 
	echo "No ingreso ningún argumento"
        exit 1
fi

res="$(grep -rH "$cadena" "$carpeta")"

#Checamos si hay alguna coincidencia
if [ -z "$res" ]; then
	echo "No se encontro ninguna coincidencia"
	exit 1
fi

echo "$res"
