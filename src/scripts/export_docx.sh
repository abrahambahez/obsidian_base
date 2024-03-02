#!/bin/zsh

files=($(pwd)/*.md)

# If markdown files, convert each one with pandoc

if [[ -n "${files}" ]]; then
    for file in "${files[@]}"; do
	# Get name without extension
        file_name=$(basename -s .md "${file}")    
        # Convert
	pandoc --citeproc -s -o "dist/${file_name}.docx" "${file}"

	echo "Archivo convertido"
    done
else
    echo "No se encontraron archivos Markdown en el directorio"
fi

