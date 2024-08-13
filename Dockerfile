FROM node:lts

WORKDIR /app

COPY . .

RUN npm install -g pnpm
RUN pnpm install -g typescript
RUN pnpm setup
RUN pnpm install
RUN tsc

EXPOSE 8000

CMD ["pnpm", "run", "start"]
