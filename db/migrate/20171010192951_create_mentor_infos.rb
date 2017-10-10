class CreateMentorInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :mentor_infos do |t|
      t.integer :mentor_id
      t.boolean :availability
      t.integer :sub_categories_id

      t.timestamps
    end
  end
end
