# Automatic Zoom Background Change

Bash script to automatically change your zoom background

You can change how often this occurs based on how you setup your
cron job

## Make File Executable

```console
chmod 755 ~/zoom/zoombgchange.sh
```

## Cron Job

```console
crontab -e
```

Add the following line (update your username and pathway)

```
55 9 * * 1-5 /Users/<YOURUSERNAME>/zoom/zoombgchange.sh > /dev/null 2>&1
```
