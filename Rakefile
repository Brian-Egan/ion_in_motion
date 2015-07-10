$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
require 'sugarcube-ui'
require 'sugarcube-color'
require 'sugarcube-factories'

$:.unshift("./lib/")
require './lib/ion_in_motion'

Motion::Project::App.setup do |app|

  if Dir.exists?("vendor/Pods/ionicons")
    unless File.exists?("vendor/Pods/ionicons/ionicons/README.md")
      load "lib/setup/setup.rb"
      readme_text = Object.const_defined?('SetupIon') ? SetupIon.readme_text : "readme"
      File.open("vendor/Pods/ionicons/ionicons/README.md", 'w') {|f| f.write(readme_text)}
    end
  end

end

task :random_task do
  puts "Hello Random Task!"
end


task :spec do
  App.config.spec_mode = true
  spec_files = App.config.spec_files
  App.config.instance_variable_set("@spec_files", spec_files)
  Rake::Task["simulator"].invoke
end