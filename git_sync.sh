#!/bin/bash

# Verifica se è stato fornito un messaggio di commit
if [ -z "$1" ]
then
    echo "Errore: Devi fornire un messaggio di commit."
    echo "Utilizzo: ./git_sync.sh \"Il tuo messaggio qui\""
    exit 1
fi

MESSAGE=$1

echo "--- Inizio sincronizzazione Git ---"

# Aggiunge tutti i file
echo "1. Aggiunta file..."
git add .

# Esegue il commit
echo "2. Commit delle modifiche..."
git commit -m "$MESSAGE"

# Esegue il push
echo "3. Push sul repository remoto..."
git push origin main

echo "--- Sincronizzazione completata! ---"
