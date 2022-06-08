# Challenge DevOps


1. Execute o codigo:

   ```bash 
   docker run -it -p 8000:8000 nidio/aluraflix:1 
   ```
   
2. Ou você pode gerar sua própria imagem com o Dockerfile 
    ```bash 
    docker image build -t aluraflix:"TAG" .
    ```
2. Execute o container a partir da imagem criada. 
    ```bash 
    docker run -it -p 8000:8000 aluraflix:"TAG" .
    ```
