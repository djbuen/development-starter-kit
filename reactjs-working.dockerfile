# 1. For build React app
FROM node:lts AS development

ENV NODE_ENV development
# Add a work directory
# WORKDIR /frontend
# RUN cd frontend

RUN mkdir -p /var/www/html
# Cache and Install dependencies
ADD ./frontend/package.json /var/www/html/package.json

# COPY yarn.lock .
RUN yarn install
# Copy app files
COPY ./frontend .
# Expose port
EXPOSE 3000
# Start the app
CMD [ "yarn", "start", "PORT=3000" ]



# # Set working directory
# WORKDIR /var/www/html

# # 
# COPY package.json /var/www/html/package.json
# # COPY yarn.lock .
# # RUN yarn install
# # COPY . /var/www/html/
# # RUN yarn build

# RUN npm install
# RUN npm install -g serve
# RUN npm build

# # COPY . /var/www/html/

# ENV PORT=3000
# EXPOSE 3000
# CMD [ "serve", "-s", "build" ]
