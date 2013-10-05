## Rationale

I originally created this script for myself when I was looking through large
code files in a legacy code base and I was having trouble keeping track of
where I was. The smooth scroll action gave me a better sense of my own
navigation.

I originally published this code [on StackOverflow](http://stackexchange.com/users/443137/kazark?tab=accounts).
The current version has been fixed up some in an attempt to be a little more
readable and conform to the guidelines put forth in `:help write-script`.

I've also used this as a chance to begin learning to use Github. At the time I
wrote this, I did not realize that there were [many existing smooth scroll
plugins](). To be honest, I haven't looked into any of them. They might be
better than this.

## Features

+ Scroll on the basis of the Vim `scroll` option.
+ Manually customizable scrolling speed (adjust the sleep command time; I use
  ten milliseconds). *Note*: just like slowing down the frame rate on a video,
  if you slow down the smooth scroll too much it will be jerky scroll.
+ Works in normal or insert mode (i.e. leaves you in insert mode if you were
  already in insert mode)
+ Simple and lightweight

## Warning

I've found that you shouldn't push <kbd>Ctrl</kbd>-<kbd>D</kbd> etc.  until the
previous scroll has finished, or the behavior is somewhat unpredictable. I have
mostly experienced this problem when dealing with very large (legacy) code files
over a painfully slow network connection.
