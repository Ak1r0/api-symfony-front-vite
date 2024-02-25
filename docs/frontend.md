# Frontend template

The frontend app creation is based on [Vite's templates](https://vitejs.dev/guide/#trying-vite-online).

Before build the container : 

1. Open the `docker/app/docker-entrypoint.sh` and change the template used :

       pnpm create vite tmp --template vue-ts

2. Then rebuild the container 

       docker composer up -d --build


> If you already built the container you can reset it by removing all files in /app from inside the container.
>    ```console
>    docker exec -ti app-front sh
>    cd /app
>    rm -Rf *
>    ```

