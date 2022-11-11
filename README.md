# Ex-Snippet

Custom vscode snippet for elixir. This snippet contain code template for creating elixir modules such as GenServer and GenStage.

## Setup

To use this snippet in vscode, you will need to configure user snippet through the command pallete (MAC shortcut: `cmd + shift + p`).

![vscode-command-pallete](./imgs/vscode-cmd-pallete.png)

You could either create a global snippet or a snippet that just target elixir file extension (`elixir.json`).

![vscode-use-snippet](./imgs/vscode-snippet.png)

The snippet definition can be found in `ex-snippet.json` file. Simply copy paste the json file to the snippet configuration that you create.

## List of Snippets

The snippets contain in this repo are as follow:

### `genserver`

![genserver](./imgs/genserver.gif)

### `genstage.producer`

![genserver](./imgs/genstage-producer.gif)

### `genstage.consumer`

![genserver](./imgs/genstage-consumer.gif)

### `genstage.producerconsumer`

![genserver](./imgs/genstage-producerconsumer.gif)
