class CreateTopic4s < ActiveRecord::Migration[6.1]
  def change
    create_table :topic4s do |t|
      t.integer :question4

      t.timestamps
    end
  end
end
