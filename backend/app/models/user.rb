class User < ActiveRecord::Base
    has_many :jives, class_name: "Jive"
    has_many :likes
 end