```sh
git clone https://github.com/gbaptista/temp-macro-issue.git

cd temp-macro-issue

git clone https://gitlab.com/andreyorst/fennel-cljlib shared-libs/cljlib

# It works:
CURRENT_FOLDER=$(pwd) fennel my-project/works.fnl

# Error:
CURRENT_FOLDER=$(pwd) fennel my-project/nope.fnl
```
