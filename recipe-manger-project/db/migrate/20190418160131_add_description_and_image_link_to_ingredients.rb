class AddDescriptionAndImageLinkToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :html_link, :string
    add_column :ingredients, :description, :text
  end
end
