FROM node:18-slim

WORKDIR /app

COPY . .

RUN yarn install --frozen-lockfile
RUN yarn build

RUN chmod -R 775 /app
RUN chown -R node:root /app

EXPOSE 3000

CMD ["yarn", "start:prod"]
