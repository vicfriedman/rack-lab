class ErbMaker

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    template = ERB.new(File.read('lib/templates/my_cool_response.html.erb'))
    split_response = response.first.split(' - ')
    @server_port = split_response[1]
    @random_number = split_response [3]
    @request_method = split_response [2]
    result = template.result(binding)
    
    if env["PATH_INFO"] == '/about'
      [status, headers, ["<h1><a href='/'>Are you lost?</a></h1>"]]
    else
      [status, headers, [result]]
    end
  end
  
end