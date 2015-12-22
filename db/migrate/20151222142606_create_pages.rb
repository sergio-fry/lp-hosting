class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug
      t.string :title
      t.string :subtitle
      t.string :form_title
      t.string :button_text
      t.text :body
      t.string :mailchimp_api_key
      t.string :mailchimp_list_id

      t.timestamps null: false
    end

    add_index :pages, :slug, unique: true
  end
end
