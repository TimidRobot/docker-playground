# docker-playground

Docker services & utilities for fun & reference.


## Services

- `trixie`: Debian 13 (trixie) service for reference
  - Uses the `debian:trixie` image from [debian - Official Image | Docker
    Hub](https://hub.docker.com/_/debian)
  - I use the `debian:trixie-slim` image in production and it is too lean to be
    a helpful reference.


## Utilities

- `bin/dcup`: _Helper script to start services defined by docker compose and
  clean them up after they are stopped. Optionally builds services first._
  - I find this script to be generally useful and have symlinked it into my
    home directory's `bin/` directory.
  - For examples, the following command will:
    1. Launch Docker if it is not already running
    2. Build all the services defined in `docker-compose.yml`
    3. Start the services
    4. Clean-up after the services exit
    ```shell
    ./bin/dcup -b
    ```


## Development


### Setup

1. Install Docker ([Get Docker | Docker Docs][get-docker])
2. Install hadolint ([Install - hadolint/hadolint][hadolint-install])
3. Install shellcheck ([Installing - koalaman/shellcheck][shellcheck-install])
4. Install prek ([Installation - j178/prek][prek-install])
5. Prepare prek hooks:
   ```shell
   prek install --prepare-hooks
   ```

[get-docker]: https://docs.docker.com/get-started/get-docker/
[hadolint-install]: https://github.com/hadolint/hadolint#install
[shellcheck-insetall]: https://github.com/koalaman/shellcheck#installing
[prek-install]: https://github.com/j178/prek#installation


## License

[![CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
button][cc-zero-png]][cc-zero]

[`LICENSE`](LICENSE): The contents of this repository is dedicated to the
public domain under the [CC0 1.0 Universal (CC0 1.0) Public Domain
Dedication][cc-zero].

[cc-zero-png]: https://licensebuttons.net/l/zero/1.0/88x31.png "CC0 1.0 Universal badge"
[cc-zero]: https://creativecommons.org/publicdomain/zero/1.0/ "CC0 1.0 Universal - Creative Commons"
