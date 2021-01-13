class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :public_plans do |t|
      t.string :name
      t.timestamps
    end

    create_table :custom_plans do |t|
      t.string :name
      t.timestamps
    end

    create_table :subscriptions do |t|
      t.references :plan, polymorphic: true, null: false
      t.references :public_plan, null: false
      t.timestamps
    end
  end
end
