# docker-redoc-cli
Generate a documentation from a Swagger file using ReDoc-CLI inside a container

You can see the rendering of the ```petstore.yml``` using https://martinraynov.github.io/docker-redoc-cli/ 

## Add file

Add your yml file in the source directory

## Execute generation

Use the command ```APPLICATION_FILE=your_file make build``` to start the generation

Once the generation is complete the output file will be stored inside the **docs** directory