require 'bundler'
Bundler.setup

require 'camping'
require 'slim'

Camping.goes :Simple

module Simple
  set :views, File.dirname(__FILE__) + '/views'

  # otherwise tilt 2.0 won't work with rackup
  set :dynamic_templates, true
end

module Simple::Controllers
  class Index < R '/'
    def get
      render :index
    end
  end
end

module Simple::Models
end
