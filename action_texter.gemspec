require File.expand_path('../lib/action_texter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Schuyler Ullman"]
  gem.email         = ["schuyler.ullman@gmail.com"]
  gem.description   = %q{ActionMailer inspired module for sending text messages.}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/sullman/action_texter"

  gem.executables   = (Dir['bin/**/*']).reject {|f| !File.file?(f) }.map{ |f| File.basename(f) }
  gem.files         = (Dir['**/*']).reject {|f| !File.file?(f) }
  gem.test_files    = (Dir['spec/**/*']).reject {|f| !File.file?(f) }
  gem.name          = "action_texter"
  gem.require_paths = ["lib"]
  gem.version       = ActionTexter::VERSION::STRING

  gem.add_dependency 'actionpack', '~> 4.0.0'
  gem.add_dependency 'twilio-ruby'
end
