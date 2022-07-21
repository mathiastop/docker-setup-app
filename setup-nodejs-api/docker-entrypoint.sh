#!/bin/sh

# The first time volumes are mounted, the project needs to be recreated
if [ ! -f package.json ]; then
    npm install express-generator-api --location=global
    express-api --git -f
    npm install dotenv cors mysql typeorm nodemon
fi

npm install

# if grep -q ^DATABASE_URL= .env; then
#     echo "Waiting for db to be ready..."
#     wait-for-it db:3306
#     echo "The db is now ready and reachable"
# fi

if grep -q '"dev":' package.json; then
    exec npm run dev
else
    exec npm run start
fi