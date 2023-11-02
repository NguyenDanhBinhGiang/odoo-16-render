# How to run
- On render, set these following env and deploy the image:
  ```
    DB_HOST
    DB_PORT 
    DB_USER 
    DB_PASSWORD 
    DB_NAME
    ```
- On local machines, run:
    ```shell
    docker build . -t odoo-e
    DB_HOST=<DB_HOST>
    DB_PORT=<DB_PORT>
    DB_USER=<DB_USER>
    DB_PASSWORD=<DB_PASSWORD>
    DB_NAME=<DB_NAME>
    docker run -e DB_HOST=$DB_HOST -e DB_PORT=$DB_PORT -e DB_USER=$DB_USER -e DB_PASSWORD=$DB_PASSWORD -e DB_NAME=$DB_NAME -p 8080:10000 odoo-e
    ```