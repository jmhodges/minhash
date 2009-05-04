= minhash

* http://example.com

== DESCRIPTION:

 Runs the MinHash algo across some strings using the murmur hash
 function.

== FEATURES/PROBLEMS:

* Does it right.

* Only works well for datasets with fewer than 2**32 (~4 billion)
  unique items in it. Larger than that and, due to use our hash
  function using unsigned 64-bit integers, we run into the birthday
  paradox.

== SYNOPSIS:
  # 23 can be any unsigned 32-bit integer, a la the MurmurHash docs.
  MinHash.minhash(['a', 'foo', 'c'], 23)

== REQUIREMENTS:

* murmur_hash gem

== INSTALL:

* sudo gem install minhash

== LICENSE:

(The MIT License)

Copyright (c) 2009 Jeff Hodges

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
