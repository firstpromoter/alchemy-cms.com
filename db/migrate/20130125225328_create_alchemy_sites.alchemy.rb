# This migration comes from alchemy (originally 20121205155004)
class CreateAlchemySites < ActiveRecord::Migration
  def change
    create_table "alchemy_sites" do |t|
      t.string :host
      t.string :name
      t.timestamps
    end
    add_index :alchemy_sites, :host, unique: true

    # add Language#site_id
    add_column :alchemy_languages, :site_id, :integer
    add_index  :alchemy_languages, :site_id
  end
end
