class Users < ActiveRecord::Base
    has_many :posts
end