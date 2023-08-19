class Management < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_one_attached :image

    validates :name, presence: true
    validates :email, presence: true
    validates :contact, presence: true

    def self.ransackable_attributes(auth_object = nil)
        ["name"]
    end
end
