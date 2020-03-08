# Modals in Elm

Source for tutorial on managing modals in Elm

[Programming in Elm: Modals in a Pure Environment](https://medium.com/@KevinBGreene/programming-in-elm-modals-in-a-pure-environment-bc2cf98fbc33)

This is fork is an upgrade the repo to Elm-0.19.1

## Installation

Install elm
```bash
$ npm install -g elm
$ npm install elm-test
$ npm install elm-format

$ elm --version  # check elm version
0.19.1
```

To reformat the source code using default rules
```bash
elm-format src/  # then answer yes
```

To compile the source code
```bash
elm make src/Main.elm --output=dist/app.html
```

After the successful compilation, 
you can open `dist/app.html` in your browser. Enjoy!