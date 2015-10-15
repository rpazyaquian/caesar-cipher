# Caesar Cipher

The Caesar cipher is a rudimentary encryption method based on mapping a letter of the alphabet to the matching letter of an identical alphabet "rotated" by some number of positions. For example, if a Caesar cipher is specified to be rotated right three times, the translation would look like this:

```
Plain:    ABCDEFGHIJKLMNOPQRSTUVWXYZ
Cipher:   XYZABCDEFGHIJKLMNOPQRSTUVW
```

This project is an implementation of a Caesar cipher written in Ruby.

# Program Flow

The program takes two inputs: the string to be translated, and the rotations to perform. It also takes an optional direction parameter, specifying whether to rotate the alphabet left or right by the given rotation. By default, the program rotates the alphabet to the right.

First, the program calculates a rotated version of the alphabet given the rotation vector (direction and magnitude).

Then, the program creates a hash of ciphered letters keyed by their matching plain letters, referred to as the "translation map".

Then, for each character in a given string, if that character is included among the translation map's keys, the program calculates the ciphered character, and joins the overall results.

Then, the program returns the string.