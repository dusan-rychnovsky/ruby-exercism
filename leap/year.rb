class Year
  def self.leap?(year)
    Year.new(year).leap?
  end
  
  def initialize(year)
    @year = year
  end
  
  def leap?
    divisible_by?(4) && (!divisible_by?(100) || divisible_by?(400))
  end
  
  def divisible_by?(number)
    @year % number == 0
  end
end
