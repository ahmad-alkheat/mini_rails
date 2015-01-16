require 'erubis'

module MiniRails
	class Controller
		def render(view_name, vars = {})
			filename = File.join('app', 'views', controller_name, "#{view_name}.erb")
			template = File.read(filename)
			Erubis::Eruby.new(template).result(vars)
		end

		def controller_name
			self.class.to_s.gsub('Controller','').downcase
		end
	end
end