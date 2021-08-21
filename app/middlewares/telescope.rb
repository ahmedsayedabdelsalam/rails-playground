# frozen_string_literal: true

class Telescope
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)
    puts "Middleware called. Status: #{status}, Headers: #{headers}"
    [status, headers, body]
    fail
  end
end
