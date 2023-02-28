class Show < ActiveRecord::Base
    has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    actors.full_name.each do |actor|
        "#{actor.&:full_name} - #{actor.show}"
    end
  end





  
end