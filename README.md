Wordinator
====
Simple app utilizing sinatra to create an api that determines whether or not the words given are anagrams or if the word given is a palindrome depending on the route.

Usage
---

### Start up

Start the server up by running `ruby wordinator.rb`

### For palindromes

Point your browser to `localhost:4567/palindrome/word` where `word` is the word  you want to know about.

### For anagrams

Point your browser to `localhost:4567/anagram/word1/word2` where `word1` and `word2` are the two words you wish to compare.

### Response

The server will then return a small bit of json at you that looks like the following

For _palindromes_ :

`{"palindrome":true,"word":"bob"}`

For _anagrams_ :

`{"anagram":false,"word":"mop","word2":"joe"}`
