class Management < ApplicationRecord
    has_many :comments, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true
    validates :contact, presence: true
end
