#!/bin/bash

# Data e Hora
DATA=$(date "+%d/%m/%y")
HORA=$(date "+%H:%M:%S")

# Serviço a ser verificado
SERVICE_NAME="httpd"

# Caminho para o diretório no NFS
NFS_DIR="/root/CompassAtividade"

ONLINE_FILE="status_servico-ONLINE.txt"
OFFLINE_FILE="status_servico-OFFLINE.txt"

# Caminho completo para os arquivos no NFS
ONLINE_PATH="$NFS_DIR/$ONLINE_FILE"
OFFLINE_PATH="$NFS_DIR/$OFFLINE_FILE"

# Verifica o serviço
if systemctl is-active --quiet $SERVICE_NAME; then
    STATUS="ONLINE"
    MENSAGEM="O serviço $SERVICE_NAME está online."
    OUTPUT_PATH="$ONLINE_PATH"
else
    STATUS="OFFLINE"
    MENSAGEM="O serviço $SERVICE_NAME está offline."
    OUTPUT_PATH="$OFFLINE_PATH"
fi

#Imprime
echo "Data: $DATA" >> "$OUTPUT_PATH"
echo "Hora: $HORA" >> "$OUTPUT_PATH"
echo "Nome do Serviço: $SERVICE_NAME" >> "$OUTPUT_PATH"
echo "Status: $STATUS" >> "$OUTPUT_PATH"
echo "Mensagem: $MENSAGEM" >> "$OUTPUT_PATH"

# Exibe uma mensagem
echo "Status do serviço $SERVICE_NAME verificado e resultado armazenado em $OUTPUT_PATH."
