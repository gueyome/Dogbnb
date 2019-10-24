class LinkDogsitterStroll < ActiveRecord::Migration[6.0]
  def change
    add_reference :strolls, :dogsitter, foreign_key: true
  end
end
