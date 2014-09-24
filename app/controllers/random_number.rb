class RandomNumber

  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    response.first << " - #{rand(1000)}"

    [status, headers, response]
  end
end