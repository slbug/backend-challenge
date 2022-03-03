class PizzaType < ApplicationRecord
  def title
    "#{name} - $#{'%.2f' % price}"
  end
end
