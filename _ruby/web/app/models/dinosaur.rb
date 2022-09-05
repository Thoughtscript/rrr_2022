class Dinosaur < ApplicationRecord  
    # Remember that Rails ActiveRecord uses attributes here!
    # Distinct from DTO's.  
    attribute :name, :string

    # Does not need to be explicitly set
    # #attribute :id, :integer
    # self.primary_key = :id

    has_many :baby_dinos, inverse_of: :dinosaur

    validates :name, presence: true

    def speak
      "Hello!"
    end
end
