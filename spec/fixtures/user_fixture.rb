class UserFixture
  class << self

    def namespace_uri
      "http://v1_0.ws.user.example.com"
    end

    def soap_actions
      { :find_user => "findUser" }
    end

    def user_wsdl
      load_fixture :user_wsdl
    end

    def user_response
      load_fixture :user_response
    end

    def soap_fault
      load_fixture :soap_fault
    end

  private

    def load_fixture(file)
      IO.readlines("fixtures/#{file}.xml", "").to_s
    end

  end
end