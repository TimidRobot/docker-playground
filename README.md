# docker-playground

Docker services & utilities for ease, experimentation, and reference.


## Services

- **`trixie`**: Debian 13 (trixie) with a few utilities I find helpful
  ([HTTPie][httpie], [ripgrep][ripgrep], etc.)
  - [`dockerfiles/trixie.Dockerfile`](dockerfiles/trixie.Dockerfile)
  - I use the `debian:trixie-slim` image in production and it is too lean to be
    a helpful reference.

[httpie]: https://httpie.io/
[ripgrep]: https://ripgrep.dev/


## Utilities

- **`dcup`**: _Helper script to start services defined by docker
  compose and clean them up after they are stopped. Optionally builds services
  first._
  - [`bin/dcup`](bin/dcup)
  - For examples, the following command will:
    ```shell
    ./bin/dcup -b
    ```
    1. Launch Docker if it is not already running
    2. Build all the services defined in `docker-compose.yml`
    3. Start the services
    4. Clean-up after the services exit
  - I find this script to be generally useful and have symlinked it into my
    home directory's `bin/` directory.
  - <details><summary>Example <code>dcup</code> output (click to expand)</summary>
    <img width="486" height="683" alt="Screenshot 2026-10-15 at 13 48 40" src="https://github.com/user-attachments/assets/ffb869a8-ffe7-439f-808c-64049af077b6" />
    </details>


## Development


### Setup

1. Install Docker ([Get Docker | Docker Docs][get-docker])
2. Install hadolint ([Install - hadolint/hadolint][hadolint-install])
3. Install shellcheck ([Installing - koalaman/shellcheck][shellcheck-install])
4. Install prek ([Installation - j178/prek][prek-install])
5. Prepare and install prek Git hooks:
   ```shell
   prek install --prepare-hooks
   ```

[get-docker]: https://docs.docker.com/get-started/get-docker/
[hadolint-install]: https://github.com/hadolint/hadolint#install
[shellcheck-install]: https://github.com/koalaman/shellcheck#installing
[prek-install]: https://github.com/j178/prek#installation


## License

[![CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
button][cc-zero-png]][cc-zero]

[`LICENSE`](LICENSE): The contents of this repository are dedicated to the
public domain under the [CC0 1.0 Universal (CC0 1.0) Public Domain
Dedication][cc-zero].

[cc-zero-png]: https://licensebuttons.net/l/zero/1.0/88x31.png "CC0 1.0 Universal badge"
[cc-zero]: https://creativecommons.org/publicdomain/zero/1.0/ "CC0 1.0 Universal - Creative Commons"
