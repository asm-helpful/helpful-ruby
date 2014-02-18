require './lib/helpful/version'

Gem::Specification.new do |s|
  s.name        = 'helpful'
  s.version     = Helpful::VERSION
  s.date        = '2012-02-18'

  s.author      = 'Assembly'
  s.email       = ['christopher.lloyd@gmail.com', 'helpful@assemblymade.com']
  s.homepage    = 'http://assemblymade.com/helpful'

  s.summary     = "A Ruby client library for Helpful.io"

  s.files = Dir['{lib}/**/*']
end
