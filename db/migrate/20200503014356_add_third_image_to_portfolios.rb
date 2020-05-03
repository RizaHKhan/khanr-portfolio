class AddThirdImageToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :third_image, :text
  end
end
