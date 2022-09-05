class Dinosaur < ApplicationRecord  
    # Remember that Rails ActiveRecord uses attributes here!
    # Distinct from DTO's.  
    attribute :name, :string

    def speak
      "Hello!"
    end
end
