#!/bin/bash

# Script di deploy automatico - esegui: ./deploy.sh "messaggio commit"
# Oppure: ./deploy.sh (ti chiederà il messaggio)

GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

if [ -z "$1" ]; then
    echo -e "${BLUE}📝 Inserisci il messaggio di commit:${NC}"
    read COMMIT_MSG
else
    COMMIT_MSG="$1"
fi

if [ ! -d ".git" ]; then
    echo -e "${RED}❌ Non sei in una repository git${NC}"
    exit 1
fi

rm -f .git/index.lock .git/HEAD.lock 2>/dev/null

echo -e "${BLUE}🔄 Aggiungendo file modificati...${NC}"
git add -A

echo -e "${BLUE}💾 Creando commit...${NC}"
git commit -m "$COMMIT_MSG"

if [ $? -ne 0 ]; then
    echo -e "${RED}❌ Errore nel commit${NC}"
    exit 1
fi

echo -e "${BLUE}🚀 Pushando su GitHub...${NC}"
git push

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Deploy completato!${NC}"
else
    echo -e "${RED}❌ Errore nel push${NC}"
    exit 1
fi
