class Jive < ActiveRecord::Base
    belongs_to :user
    has_many :likes
    has_many :users, through: :likes

    def total_likes
        self.likes.pluck(:likes).sum()
    end

    def total_dislikes
        self.likes.pluck(:dislikes).sum()
    end 

 end