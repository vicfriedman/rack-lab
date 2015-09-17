class ServerPort

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response.first << " - #{env["SERVER_PORT"]}"

    [status, headers, response]
  end

end