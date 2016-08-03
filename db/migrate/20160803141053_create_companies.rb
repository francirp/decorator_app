class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.float :budget
      t.float :actual
      t.float :percent_budget_spent

      t.timestamps null: false
    end
  end
end
