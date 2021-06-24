class User < ActiveRecord::Base
    has_many :jives
    has_many :likes
 end