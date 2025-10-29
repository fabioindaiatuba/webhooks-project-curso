# Webhooks Project (simplificado)

Projeto mono-repo com backend (Fastify + Drizzle) e frontend (React + Vite).

## Estrutura principal
- Workspace: [package.json](package.json)  
- Backend: [api/package.json](api/package.json) — servidor em [api/src/server.ts](api/src/server.ts) (variáveis em [`env`](api/src/env.ts))  
- Banco: configuração Drizzle em [api/drizzle.config.ts](api/drizzle.config.ts), migrations em [api/src/db/migrations/0000_parallel_demogoblin.sql](api/src/db/migrations/0000_parallel_demogoblin.sql) e acesso em [api/src/db/index.ts](api/src/db/index.ts)  
- Frontend: [web/package.json](web/package.json), entrada em [web/src/main.tsx](web/src/main.tsx) e componente em [web/src/app.tsx](web/src/app.tsx), config em [web/vite.config.ts](web/vite.config.ts)

## Instalação
1. Instale dependências (na raiz):
   pnpm install

## Uso / Execução
- Backend (desenvolvimento):
  pnpm --filter api dev
  (usa o script `dev` em [api/package.json](api/package.json))
- Frontend (desenvolvimento):
  pnpm --filter web dev
  (usa o script `dev` em [web/package.json](web/package.json))

## Banco de dados
- Variável de conexão: definida via ENV e validada em [`env`](api/src/env.ts).  
- Gerar/migrar: use os scripts `db:generate` / `db:migrate` em [api/package.json](api/package.json) (drizzle-kit).

## Tecnologias principais
- Fastify, TypeScript, Zod, Drizzle ORM, Postgres (backend)  
- React 19, Vite (frontend)  
(veja dependências em [api/package.json](api/package.json) e [web/package.json](web/package.json))

## Notas rápidas
- O workspace é gerenciado com pnpm ([pnpm-workspace.yaml](pnpm-workspace.yaml), lock em [pnpm-lock.yaml](pnpm-lock.yaml)).  
- Arquivos ignorados do backend: [api/.gitignore](api/.gitignore)
