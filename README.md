# GRGBRB (G RGB for Ruby)

GRGBRB is a Ruby library for controlling the RGB LEDs on Logitech G series 
gaming hardware. 

It's currently very basic and has only been tested with a G502 gaming mouse.

## Installation
```
gem install grgbrb
```

## Example
```ruby
require 'grgbrb'

GLed.init
GLed.set_color 100, 0, 0
```