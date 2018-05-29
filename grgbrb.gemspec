# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'grgbrb'
  s.version       = '1.0.0'
  s.date          = '2018-05-29'
  s.summary       = 'Control Logitech G hardware\'s RGB from Ruby'
  s.authors       = ['Aaron Christiansen']
  s.email         = 'aaronc20000@gmail.com'
  s.files         = Dir.glob('lib/**/*')
  s.license       = 'MIT'
  s.require_paths = %w[lib]
end
