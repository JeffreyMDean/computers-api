require "test_helper"

class ComputersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/computers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Computer.count, data.length
  end

  test "create" do
    assert_difference "Computer.count", 1 do
      post "/computers.json", params: { make: "Apple", model: "Macbook Air", year: "2020" }
      assert_response 200
    end
  end
end
