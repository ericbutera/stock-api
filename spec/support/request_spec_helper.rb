# spec/support/request_spec_helper
module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse response.body # unless response.nil? || response.body.nil?
  end
end
