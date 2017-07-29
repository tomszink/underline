# underline package

Underline a heading, e.g. for **reStructuredText** or Markdown -- *quick & easy*.

## Usage

Invoke the "underline" command to underline a line of text with the character typed last below that line.

Example:

```
A headline you typed
-
```

If in this situation, i.e. after typing "-" and the cursor is next to "-", you invoke the command, it will result in underlining the heading text with "-"

```
A headline you typed
--------------------
```

Similarly, you can use any other character to underline, e.g.:

```
A headline you typed
~
```

and invoking the command will result in:

```
A headline you typed
~~~~~~~~~~~~~~~~~~~~
```

This is useful for **reStructuredText** or Markdown flavors, in case you use this kind of heading style.

## Command invocation

You can invoke the command using one of the following methods:

* Use the keyboard shortcut: ```ctrl-alt-h```
* Use the context menu -> *Underline*
* Us the menu "Packages" -> "Underline" -> *Create underline*
