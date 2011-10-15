require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "blasphemy"
    gem.summary = %Q{A different Lorem Ipsum generator, lightweight and extensible}
    gem.description = %Q{Surprise everyone by stubbing placeholder texts with something more original than boring "Lorem ipsum dolor sit amet". Embrace and extend, creating own wordlists for hilarious (or blasphemous or whatever you like) generated texts.}
    gem.email = "tomekrs@o2.pl"
    gem.homepage = "http://github.com/tomash/blasphemy"
    gem.authors = ["Tomasz Stachewicz"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = './test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "blasphemy #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
