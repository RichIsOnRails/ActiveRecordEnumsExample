class Order < ActiveRecord::Base
  validates :subtotal, presence: true
  validates :tax, presence: true
  validates :shipping, presence: true
  validates :total, presence: true
  
  enum status: { cancelled: 0, in_progress: 1, completed: 2, invoiced: 3 }
end
