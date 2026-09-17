cadena="$1"


# Valida si se paso una carpeta como argumento
if [ $# -eq 0 ]; then 
	echo "No ingreso ningún argumento"
        exit 1
fi

echo "$(grep -rH "$cadena" /home)"
