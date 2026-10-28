#!/bin/zsh

# Configuration variables for the DesktopID application.
local APP_NAME="desktopID"
local APP_PATH="/Applications/${APP_NAME}.app"
local USER_SUPPORT_DIR="${HOME}/Library/Application Support/${APP_NAME}"
local GLOBAL_LIB_DIR="/usr/local/lib"

echo "1. encerrando processos do ${APP_NAME} em execução..."
# Terminate any running processes of the DesktopID application.

#O parâmetro -9 envia o sinal SIGKILL, forçando a interrupção imediata do processo na memória RAM, 
#enquanto o -i torna a busca case-insensitive (ignora maiúsculas e minúsculas).

pkill -9 -i "desktopid" 2>/dev/null

echo "2. Remoção do aplicativo..."
if [[ -d "${APP_PATH}" ]]; then
    sudo rm -rf "${APP_PATH}"
    echo "-> Aplicativo removido com sucesso."
else
    echo "-> Aplicativo não encontrado. Provavelmente já havia sido removido."
fi

echo "3. Removendo o cache e configurações (plist) do usuário..."
# Remove cache e configurações do usuário na pasta ~/Library/Application Support/desktopID.
if [[ -d "${USER_SUPPORT_DIR}" ]]; then
    rm -rf "${USER_SUPPORT_DIR}"
    echo "-> Suporte do aplicativo removido com sucesso."
fi

# Utiliza o padrão Padrão POSIX para remover arquivos forçando um case-INsensitivity no nome.
rm -rf "$HOME/Library/Caches/desktopID" 2>/dev/null
rm -f "$HOME/Library/Preferences/"*[dD]esktop[iI][dD]*.plist 2>/dev/null
echo "-> Cache e configurações do usuário removidas com sucesso."

echo "4. Removendo PKCS dynamic libraries (.dylib)..."
# Remove dynamic libraries (.dylib) relacionada ao DesktopID from /usr/local/lib/.
local DYLIB_PATH="${GLOBAL_LIB_DIR}/libdesktopID_Provider.dylib"

if [[ -f "${DYLIB_PATH}" ]]; then
    sudo rm -f "${DYLIB_PATH}"
    echo "-> Dynamic library removida com sucesso."
else
    echo "-> Dynamic library não encontrada..."
fi

# Remove qualquer configuração global
sudo rm -rf "/Library/${APP_NAME}" 2>/dev/null
echo "-> Configurações globais removidas com sucesso."

echo "5. Limpeza concluída. O aplicativo ${APP_NAME} foi completamente removido do sistema."
