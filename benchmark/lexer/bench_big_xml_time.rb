require_relative '../../lib/oga'
require 'benchmark'

xml   = File.read(File.expand_path('../../fixtures/big.xml', __FILE__))
lexer = Oga::XML::Lexer.new(xml)

Benchmark.bmbm(10) do |bench|
  bench.report '10MB of XML' do
    lexer.advance { |tok| }
  end
end
