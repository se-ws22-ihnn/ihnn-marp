# ihnn-marp

easy markdown presentation

```bash
docker run -p 3000:80 ghcr.io/se-ws22-ihnn/ihnn-marp:latest
```

## usage

this repository is based on [yhatt/marp-cli-example](https://github.com/yhatt/marp-cli-example)

to manually build something just enter

```bash
npx @marp-team/marp-cli@latest ./slides.md --html --output=./build/index.html
```

or just use the VS Code Extension [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)

## build

Dockerfile builds everything and the final image is based on nginx:alpine, so final image size is very small
