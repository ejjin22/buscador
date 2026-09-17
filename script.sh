cadena="$1"


# Valida si se paso una carpeta como argumento
if [ $# -eq 0 ]; then 
	echo "No ingreso ningún argumento"
        exit 1
fi

res="$(grep -rH "$cadena" /home)"
if [ -z "$res" ]; then
	echo "No se encontro ninguna coincidencia"
	exit 1
fi

echo "$res"
