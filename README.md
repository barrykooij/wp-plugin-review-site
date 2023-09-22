# WordPress Plugin Review Site
A quick way to set up an isolated container for testing WordPress plugins with Docker composer.

## How to run?
In the root folder of this project type

```bash
bash create.sh <plugin-url>
```

After this you can navigate to http://localhost:8000 in your favorite browser and login with username `prt` and password `prt`.

## Dependencies
- Docker
- wget

## Work in progress
This is a work in progress, there's no checks on if you've entered a ZIP url or not or any other fallbacks / checks.

## License
GPLv3 or later