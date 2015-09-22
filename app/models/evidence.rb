class Evidence < ActiveRecord::Base
    attr_accessible :BiblioID, :UserID
    belongs_to :biblio
end
