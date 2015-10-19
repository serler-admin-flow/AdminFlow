class User
    attr_accessor :login, :logout, :register
    
    def initialize
        @login = true
        @logout = false
        @register = true
    end
    
end