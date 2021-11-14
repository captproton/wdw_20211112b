# This migration comes from wdw_sources (originally 20211111214149)
class AddThemeparksIdToWdwSourcesTouringplansAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :wdw_sources_touringplans_attractions, :themeparks_id, :text
  end
end
