#!/bin/bash

# Afficher le menu
echo "=== Menu Bzzz ==="
echo "1. Afficher mon adresse IP"
echo "2. Afficher tous les adresse IP du réseau"
echo "3. Afficher le nom de ma machine"
echo "4. Quitter"

# Demander à l'utilisateur de choisir une option
read -p "Entrez le numéro de l'option que vous souhaitez exécuter : " choix

# Exécuter la tâche en fonction du choix de l'utilisateur
case $choix in
  1)
    hostname -I
    ;;
  2)
    nmap -sn 192.168.1.1/24 | grep 192.168 | cut -d "(" -f 2 | cut -d ")" -f 1
    ;;
  3)
    hostname
    ;;
  4)
    exit 0
    ;;
  *)
    echo "Option invalide"
    ;;
esac
