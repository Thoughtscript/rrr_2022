class BabyDino < ApplicationRecord
    attribute :name, :string

    # Does not need to be explicitly set
    # attribute :id, :integer
    # self.primary_key = :id

    # Does not need to be explicitly set
    # attribute :dinosaur_id, :integer
    belongs_to :dinosaur, class_name: "Dinosaur", inverse_of: :baby_dinos

    validates :name, presence: true
end
