class Gym < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :clients, through: :memberships
    # validates :client, uniqueness: { scope: :name }
end
