class Company < ActiveRecord::Base
  validates_presence_of :name, :budget, :actual

  def percent_budget_spent
    (actual / budget).round(2)
  end
end
