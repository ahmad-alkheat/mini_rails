require "mini_rails/version"

module MiniRails
  class Application
  	def call(env)
  		controller, action = get_controller_and_action(env)
  		response = controller.new.send(action)
  	  [ 200, {'Content-type' => 'text/html' }, [ response ] ]
  	end

  	def get_controller_and_action(env)
  		_, controller_name, action = env['PATH_INFO'].split('/')
  		controller_name = controller_name.capitalize + 'Controller'
  		[ Object.const_get(controller_name), action] 
  	end
  end
end
