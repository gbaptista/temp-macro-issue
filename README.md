```sh
git clone https://github.com/gbaptista/temp-macro-issue.git

cd temp-macro-issue

git clone \
  https://gitlab.com/andreyorst/fennel-cljlib \
  --branch relative-require-shenanigans \
  shared-libs/cljlib

# It works:
PWD=$(pwd) fennel my-project/works.fnl

# Fixed
PWD=$(pwd) fennel my-project/fixed.fnl

# Error
PWD=$(pwd) fennel my-project/error.fnl

# It works:
fnx my-project/fnx/cli.fnl

# It works:
fnx my-project/fnx/boot.fnl

# It fails:
fennel my-project/fnx/boot.fnl
```
