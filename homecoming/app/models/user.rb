class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :comments, dependent: :destroy

    validates :email, presence: true, uniqueness: true
    validates :nickname, presence: true
    validates :password, presence: true
end
