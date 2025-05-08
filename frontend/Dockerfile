FROM node:18-alpine AS build
WORKDIR /app

# 1. Copy package files and install deps
COPY package*.json ./
# Install dependencies (fall back to npm install so lockfile mismatch is ignored)
RUN npm install --legacy-peer-deps

# 2. Refresh the browserslist DB to avoid build-time mismatches
RUN npx browserslist@latest --update-db

# 3. Patch postcss if needed
RUN npm install postcss@8.4.21 postcss-safe-parser@6.0.0


# 4. Copy source and set OpenSSL flag
COPY . .
ENV NODE_OPTIONS=--openssl-legacy-provider

# 5. Build the production bundle
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
