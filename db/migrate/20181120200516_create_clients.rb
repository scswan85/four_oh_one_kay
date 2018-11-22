class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.string :city
      t.string :state
      t.string :citizenship
      t.string :employment_status
      t.string :occupation
      t.boolean :investment_experience
      t.integer :stock_exp
      t.integer :bond_exp
      t.integer :mutual_fund_exp
      t.integer :option_exp
      t.integer :ddp_exp
      t.integer :reit_exp
      t.integer :annuity_exp
      t.string :account_objective
      t.string :risk_tolerance
      t.string :account_time_horizon
      t.string :annual_income
      t.string :adjusted_net_worth
      t.string :liquid_net_worth
      t.string :account_liquidity_needs

      t.timestamps
    end
  end
end
