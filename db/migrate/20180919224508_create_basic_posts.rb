class CreateBasicPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :basic_posts do |t|
      t.text :body

      t.timestamps
    end
  end
end
