# apollo-cli
Use Apollo client tools like codegen despite working in an up-to date Node.js/npm environment

# How to use

The working directory is /home/node and you can mount your project directory to it. Then you can call all apollo commands from the container.
See [Apollo CLI documentation](https://www.apollographql.com/docs/devtools/cli/) for details.

I most often use the code generator in watch mode to automatically generate TypeScript types for the GraphQL queries in my projects, which looks like this:

```
docker run --rm -it -v "$PWD":/home/node kepawni/apollo-cli:latest \
    apollo client:codegen \
        --target typescript \
        --localSchemaFile schema.graphqls \
        --outputFlat \
        --includes 'src/**/*.ts*' \
        --excludes='src/generatedTypes.ts' \
        --watch \
        'src/generatedTypes.ts'
```
