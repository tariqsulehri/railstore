class Product < ApplicationRecord
    # associations
    has_many :line_items
    has_many :orders, through: :line_items

    # validations
    validates :title, uniqueness: true
    validates :image_url, allow_blank: true, format:{
        with:%r{\.(gif|jpg|png)\Z}i,
    }
    validates :title, :description, :image_url, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    # call backs
    before_destroy :ensure_not_referenced_by_any_line_item

    private
       def ensure_not_referenced_by_any_line_item
          unless line_items.empty?
              errors.add(base: 'Associated line Items exists!. ')
              throw :abort
          end
       end
end
