require "./test/test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    App
  end

  def test_declares_its_name
    response = get "/"
    assert response.ok?
    assert_equal "I am a webpage!  Replace me with your Homework!", response.body
  end

  ## 
  # def test_it_handles_and_returns_json
  #   hash = { name: "bob" }
  #   response = post("/api/echo", hash.to_json, { "CONTENT_TYPE" => "application/json" })
  #
  #   assert response.ok?
  #   payload = JSON.parse(response.body)
  #   assert_equal({ "name" => "bob" }, payload)
  # end
end
