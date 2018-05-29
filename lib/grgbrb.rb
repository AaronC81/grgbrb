require 'fiddle'

# Allows control of Logitech G LEDs. Call GLed.init before use.
module GLed
  # Initialises the library. The parameter should be the Ruby
  # installation's bitness architecture, either 86 or 64.
  def self.init(installation_type = '64')
    @lib = Fiddle.dlopen('C:\Program Files\Logitech Gaming Software\SDK\LED' \
                         "\\x#{installation_type}\\LogitechLed.dll")

    Fiddle::Function.new(@lib['LogiLedInit'], [], Fiddle::TYPE_VOID).call
  end

  # Sets the RGB values of the mouse color. Each value is out of 100.
  def self.set_color(red, green, blue)
    fiddle_fun = Fiddle::Function.new(
      @lib['LogiLedSetLighting'],
      [Fiddle::TYPE_INT] * 3,
      Fiddle::TYPE_VOID
    )

    fiddle_fun.call(red, green, blue)
  end
end
