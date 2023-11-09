class CreateTopic3s < ActiveRecord::Migration[6.1]
  def change
    create_table :topic3s do |t|
      t.integer :question3

      t.timestamps
    end
  end
end
