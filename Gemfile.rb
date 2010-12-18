# bundler freaking rocks! makes it very easy to install all your gems and deps
# can even install gems and deps for all your deferent environments 
# bundler site:
#   http://gembundler.com/

source 'http://rubygems.org'
# or
source :rubygems
# gemcutter is now merged into rubygems
# sourceing gemcutter has been depreciated 
# source :gemcutter

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# use mongoid with rails 3
gem "mongoid", "2.0.0.beta.20"
gem "bson_ext", "1.1.5"

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19'

gem 'paperclip', :git => 'git://github.com/thoughtbot/paperclip.git',
                 :branch => 'rails3'
                 
#Security
gem 'devise', '1.1.3'
gem 'devise-mongo_mapper', :git => 'git://github.com/collectiveidea/devise-mongo_mapper'
gem 'devise_invitable','0.3.5'  
               
# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

