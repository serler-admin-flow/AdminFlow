class Biblio < ActiveRecord::Base
    attr_accessible :UserID 
    belongs_to :user
end
