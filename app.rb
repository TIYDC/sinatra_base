require_relative "dependencies"

class App < Sinatra::Base
  # This is a route / endpoint.  It listens for the "GET" http verb, at the "/" root route.
  #
  get "/" do
    # The body method allows you to set the HTTP body of the Response.
    status 200
    body "I am a webpage!  Replace me with your Homework!"
  end

  # Below is an example of a post request.
  # post "/api/echo" do
  #   payload = JSON.parse(request.body.read)
  #
  #   status 201
  #   body payload.to_json
  # end

  run! if app_file == $PROGRAM_NAME
end
