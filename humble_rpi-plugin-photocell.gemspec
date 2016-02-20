Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-photocell'
  s.version = '0.1.1'
  s.summary = 'A Humble RPi plugin to monitor ambient light levels.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-photocell.rb']
  s.add_runtime_dependency('rpi_photocell', '~> 0.1', '>=0.1.0')  
  s.signing_key = '../privatekeys/humble_rpi-plugin-photocell.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-photocell'
end
