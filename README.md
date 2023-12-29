# Scripts

Shorthands for commands I use often in the terminal.

## Installation

First, clone this repo to wherever you'll use the scripts. I usually use the `~/Developer`.

### Access anywhere

Now we want the ability to run the scripts from anywhere without navigating to this directory each time. We therefore need to add its location to your system's `PATH` environment variable.

Open your .zshrc file:

```shell
code ~/.zshrc.
```

Add the path to the script directory:

```
export PATH="$PATH:/Users/danny/Developer/scripts"
```

Save the file. Then reload your shell configuration in the terminal:

```shell
source ~/.zshrc
```

### Set up each script

Run the following terminal command for each script:

```shell
chmod +x script-name-here.sh
```
