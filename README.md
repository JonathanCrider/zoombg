# Automatic Zoom Background Change

Bash script to automatically change your zoom background.

You can change how often this occurs based on how you setup your
cron job.

You will need to update the main bash file with your own information/pathways.

## Make File Executable

```console
chmod 755 ~/zoom/zoombgchange.sh
```

## Cron Job

```console
crontab -e
```

Add the following line (update your username and pathway)
OR
Use [https://crontab.guru/](https://crontab.guru/) to generate your own

```console
55 9 * * 1-5 /Users/<YOURUSERNAME>/zoom/zoombgchange.sh > /dev/null 2>&1
```

## Manual Update

If you want to manually cycle your background from your image folder, you
can use the command line to do so.

On MacOS, just update your .zshrc or .bash_rc file with the following alias.
Obviously, feel free to create your own! And don't forget to update the path
if necessary.

```zsh
alias chzbg="~/zoom/zoombgchange.sh"
```
