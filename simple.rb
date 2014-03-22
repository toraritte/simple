require 'camping'
require 'slim'

Camping.goes :Simple

module Simple
  set :views, File.dirname(__FILE__) + '/views'
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

# __END__

# @@ layout.slim
# doctype html
# html
#   head
#     title 'minek mentek az usaba?'

#   body
#     ==yield

# @@ index.slim
# p 'Na most ennyi'
# img [src="https://googledrive.com/host/0B4yCEq1xUxRWYVJuQmlmWlpMX1E/IMG_2785.JPG" width="270" height="270"]
