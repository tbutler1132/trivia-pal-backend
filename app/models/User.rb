class User < ApplicationRecord
    has_many :scores
    validates_uniqueness_of :name
    has_secure_password
end
