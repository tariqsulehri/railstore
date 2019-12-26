class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password

  after_destroy :ensure_an_admin_remains

  class Error < StandardError

  end 
  
  private
   def ensuate_an_admin_remains
      if User.count.zero?
         raise Error.new "Cant't delete last recrod"
      end  
   end

end
