#!/bin/sh

echo "🚀 Iniciando servidor ReactPHP..."

# Mostrar ubicación actual
echo "📂 Directorio actual: $(pwd)"

# Verificar si existe el archivo
if [ ! -f "public/index.php" ]; then
  echo "❌ Archivo public/index.php no encontrado"
  exit 1
fi

# Ejecutar el servidor
php public/index.php

echo "🛑 El script terminó (esto no debería pasar si el loop corre bien)"
