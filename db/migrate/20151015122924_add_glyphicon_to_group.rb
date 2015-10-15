class AddGlyphiconToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :glyphicon, :string
  end
end
