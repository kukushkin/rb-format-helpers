
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

ensure_in_path 'lib'
require 'format-helpers'

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name  'format-helpers'
  authors  'Alex Kukushkin'
  email  'alex@neq4.com'
  url  'http://neq4.com'
  version  FormatHelpers::VERSION
}

# EOF
