class CreateTourCategories < ActiveRecord::Migration
  def change
    create_table :tour_categories do |t|
      t.references :tour, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
