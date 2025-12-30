# coalton-io-template

A tiny starter project for `coalton-io` + Coalton, wired for:
- project-local dependencies via **Qlot**
- src directory (`src/main.lisp`)
- test suite via **Fiasco** (`tests/package.lisp`)
- running the app via **ASDF** (`coalton-io-template/run`)

## 1) Install dependencies

From the repo root:

```sh
qlot install
```

This installs all of the dependencies into `./.qlot/`

## 2) Run main from the command line


## 3) Launch a REPL with code + deps loaded

#### SBCL

```sh
qlot exec sbcl --no-userinit --load .qlot/setup.lisp
```

Then in the REPL:

```lisp
(asdf:load-system "coalton-io-template")
```

#### Roswell

```sh
qlot exec ros run +Q --load .qlot/setup.lisp
```

Then in the REPL:

```lisp
(asdf:load-system "coalton-io-template")
```

## 4) Launch Editors with project support

Qlot can integrate with several editors. [See here for more](https://github.com/fukamachi/qlot?tab=readme-ov-file#working-with-slime).

#### Emacs

To launch Emacs with local project dependencies, run this in the terminal from the project root:
```sh
qlot exec emacs
```

For other ways to integrate the local dependencies into Emacs, [see the QLot documentation](https://github.com/fukamachi/qlot?tab=readme-ov-file#working-with-slime).

## 5) Run the tests

### Run the tests as a one-off

#### SBCL
```sh
qlot exec sbcl --no-userinit \
  --load .qlot/setup.lisp \
  --eval '(asdf:test-system "coalton-io-template")' \
  --eval '(uiop:quit)'
```

#### Roswell
```sh
qlot exec ros run +Q \
  --load .qlot/setup.lisp \
  --eval '(asdf:test-system "coalton-io-template")' \
  --eval '(uiop:quit)'
  ```

### Run the tests from the REPL

Alternatively, you can run the tests from a REPL. First, load a REPL (see #3 above). Then from within the REPL run:
```lisp
(asdf:test-system "coalton-io-template")
```
