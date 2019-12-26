class LineItem < ApplicationRecord
  belongs_to :order,   optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  # before_save :check_values

  # def check_values
  #   puts "============"*80
  #   puts self.inspect
  #   puts "============"*80
  # end
  
  def total_price
     product.price * quantity
  end  
end
