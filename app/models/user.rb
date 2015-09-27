class User < ActiveRecord::Base
  
    #Create role variable and call method for new users to be assigned a default role
    enum role: [:user, :moderator, :admin]
    after_initialize :set_default_role, :if => :new_record?
    
    #Assign default role to new user
    def set_default_role
      self.UserRole ||= :user
    end
    
    #required variables from user db table
    attr_accessible :UserName, :UserEmailID, :UserPassword, :password_confirmation
    
    #variables
    attr_accessor :UserPassword
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    #validations for user submission  
    validates :UserName, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :UserEmailID, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
    validates :UserPassword, :confirmation => true #password_confirmation attr
    validates_length_of :UserPassword, :in => 6..20, :on => :create
    
    #basic salt for p/w
    salt= Digest::SHA1.hexdigest("# We add {UserEmailID} as unique value and #{Time.now} as random value")
    UserPassword= Digest::SHA1.hexdigest("Adding #{salt} to {UserPassword}")
    
    #save salted p/w and clear data
    before_save :encrypt_password
    after_save :clear_password
    def encrypt_password
      if password.present?
        self.salt = BCrypt::Engine.generate_salt
        self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
      end
    end
    
    #method to clear data
    def clear_password
      self.password = nil
    end
    
end
