class User 
  attr_accessor :name, :life_points
  def initialize(name)
    @name = name
    @life_points = 3
  end
  
  def loss_life
    @life_points -= 1
  end

end

man = User.new('bob')
