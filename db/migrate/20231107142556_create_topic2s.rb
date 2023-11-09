class CreateTopic2s < ActiveRecord::Migration[6.1]
  def change
    create_table :topic2s do |t|
      t.integer :question2

      t.timestamps
    end
  end
end
