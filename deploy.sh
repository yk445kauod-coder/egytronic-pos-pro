#!/bin/sh
set -e
command -v docker >/dev/null || { echo 'Install Docker first: https://docs.docker.com/engine/install/'; exit 1; }
if [ ! -f .env ]; then
  cp .env.example .env
  sed -i "s/DB_ROOT_PASSWORD=.*/DB_ROOT_PASSWORD=$(openssl rand -hex 24)/;s/DB_PASSWORD=.*/DB_PASSWORD=$(openssl rand -hex 24)/" .env
  echo 'Created .env with random DB passwords. Edit DOMAIN in .env, then run ./deploy.sh again.'
  exit 0
fi
grep -q 'pos.example.com' .env && { echo 'Set your real DOMAIN in .env first.'; exit 1; }
mkdir -p backups
docker compose -f docker-compose.prod.yml up -d
echo 'Started. Open https://YOUR_DOMAIN, log in as admin / pointofsale and CHANGE THE PASSWORD NOW.'
