# Hangman

Hello!

This is a console version of popular game [Hangman](https://en.wikipedia.org/wiki/Hangman_(game)). Made in Ruby 🔥
<br>Please note: only russian in game language supported.

## How to use
One simple command in root directory:
```
ruby main.rb
```

## Rules
The word to guess is represented by a row of dashes, representing each letter of the word.
<br>Proper nouns, such as names, places, and brands, are not allowed.
<br>Slang words, sometimes referred to as informal or shortened words, are also not allowed.
<br>If the player suggests a letter which occurs in the word, the program writes it in all its correct positions. 
<br>If the suggested letter does not occur in the word, the program draws one element of a hanged man stick figure as a tally mark.
<br>If the player have guessed all the letters of the word — player wins
<br>If the player made 7 failed attempts  — the game is lost


## How to add new words
Edit the file words.txt in data directory

## The sample of interface
<pre><code>
Слово: К О __ О __ __
         _______
         |/
         |     ( )
         |      |
         |
         |
         |
         |
         |
       __|________
       |         |

Ошибки (2): Х, У
У вас осталось ошибок: 5

Введите следующую букву:
</code></pre>
