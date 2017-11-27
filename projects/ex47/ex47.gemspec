# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name           = "ex47"
  spec.version        = "1.0"
  spec.authors        = ["Huiqiong Gu"]
  spec.email          = ["hgu@buffalo.edu"]
  spec.summary        = %q(This is the project for Learn Ruby the Hard Way)
  spec.description    = %q(This is the project for Learn Ruby the Hard Way)
  spec.homepate       = "https://learnrubythehardway.org/book/ex46.html"
  spec.licence        = "MIT"

  spec.files          = ['lib/ex47.rb']
  spec.executables    = ['bin/ex47']
  spec.test_files     = ['tests/test_ex47.rb']
  spec.require_paths  = ['lib']
end
