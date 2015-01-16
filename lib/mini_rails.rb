require "mini_rails/version"

module MiniRails
  class Application
  	def call(env)
  	  [ 200, {'Content-type' => 'text/html' }, [ 'Hello'] ]
  	end
  end
end
