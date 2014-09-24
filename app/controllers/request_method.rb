class RequestMethod

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response.first << " - #{env["REQUEST_METHOD"]}"

    [status, headers, response]
  end
end