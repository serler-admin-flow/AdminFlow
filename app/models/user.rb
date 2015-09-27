class User < ActiveRecord::Base
  
    #variables
    attr_accessor :user_password
    #required variables from user db table
    attr_accessible :user_name, :user_email_id, :user_password, :password_confirmation

    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    #Create role variable and call method for new users to be assigned a default role
    #enum role: [:user, :moderator, :admin]
    #after_initialize :set_default_role, :if => :new_record?
    
    #Assign default role to new user
    #def set_default_role
    #  self.UserRole ||= :user
    #end
    
    #validations for user submission  
    validates :user_name,     :presence   => true,
              :length                     => { :maximum => 50 }
    validates :user_email_id, :presence   => :true,
              :format                     => { :with => email_regex },
              :uniqueness                 => { :case_sensitive => false }
    validates :user_password, :presence   => true,
              :confirmation               => true,
              :length                     => { :within => 6..40 }
              
    before_save :encrypt_password
    
    def has_password?(submitted_password)
      encrypted_password == encrypt(submitted_password)
    end
    
    # class method that checks whether the user's email and submitted_password are valid
    def self.authenticate(user_email_id, submitted_password)
      user = find_by_email(user_email_id)
      
      return nil if user.nil?
      return user if user.has_password?(submitted_password)
    end

    private
      def encrypt_password
        # generate a unique salt if it's a new user
        self.salt= Digest::SHA2.hexdigest("#{Time.now.utc}--#{user_password}") if self.new_record?
        
        # encrypt the password and store that in the encrypted_password field
        self.encrypted_password = encrypt(user_password)
      end
      
      #encrypt the password using both the salt and the passed password
      def encrypt(pass)
        Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
      end
    
    #save salted p/w and clear data
    #before_save :encrypt_password
    #after_save :clear_password
    #def encrypt_password
    #  if password.present?
    #    self.salt = BCrypt::Engine.generate_salt
    #    self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
    #  end
    #end
    
    #method to clear data
    #def clear_password
    #  self.password = nil
    #end
    
end
