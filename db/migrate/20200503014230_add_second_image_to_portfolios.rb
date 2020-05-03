class AddSecondImageToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :second_image, :text
  end
end
