# symfony4-composer-node

Add Environment Variables for mysql & phpmyadmin into a docker-composer-override.yaml file.

Exemple:

```
version: "3"

services:
    db:
      environment:
          MYSQL_DATABASE: database
          MYSQL_USER: dev
          MYSQL_PASSWORD: dev
          MYSQL_ROOT_PASSWORD : dev

    phpmyadmin:
        environment:
            - PMA_HOST=db
            - PMA_USER=dev
            - PMA_PASSWORD=dev
```
