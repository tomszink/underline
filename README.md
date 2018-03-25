# underline package

Underline a heading, e.g. for **reStructuredText** or Markdown --
*quick & easy*.

## Usage

Invoke the "underline" command to underline a line of text with the character
typed last below that line.

Example:

```
A headline you typed
-
```

If you invoke at this state the command (i.e. after typing "-" and the cursor
is next to "-"), it will result in underlining the heading text with "-"

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

This is useful for **reStructuredText** or Markdown flavours, in case you use
this kind of heading style.

## Command invocation

You can invoke the command using one of the following methods:

* Use the keyboard shortcut: ```ctrl-alt-h```
* Use the context menu -> *Underline*
* Us the menu "Packages" -> "Underline" -> *Create underline*


## FAQ

- I want to underline with a "~" (or "´", "`"), but why do I get a strange
  character ("ª") when I try to run the underline command?

  - The reason is that the editor is still in a special mode after typing
    "~", "´" or "`" and interprets the keyboard shortcut differently.
    You first have to press space therefore and then the keyboard shortcut.
