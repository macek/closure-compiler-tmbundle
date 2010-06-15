# Closure Compiler Bundle

## About

This bundle does not require the localized copy of the `closure-compiler.jar`. Instead, it 
uses the web-based Closure Compiler Service via an HTTP POST request.

For more information, see the [Closure Compiler Service API Reference][1]

## Installation

    $ cd ~/Library/Application\ Support/TextMate/Bundles/
    $ git clone git@github.com:macek/closure-compiler-tmbundle.git "Closure Compiler.tmbundle"

If TextMate is running while you perform the update, you may want to also execute the following line:

    $ osascript -e 'tell app "TextMate" to reload bundles'

## Usage

1. Press __⌃⇧H__ to compile/replace your current document
2. Press __⌘R__ to compile to new `.compile.js`-suffixed document

## Support

See the GitHub repository

[http://www.github.com/macek/closure-compiler-tmbundle][2]

[1]: http://code.google.com/closure/compiler/docs/api-ref.html
[2]: http://www.github.com/macek/closure-compiler-tmbundle