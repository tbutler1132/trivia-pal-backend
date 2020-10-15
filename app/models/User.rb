class User < ApplicationRecord
    has_many :scores
    has_secure_password
end
