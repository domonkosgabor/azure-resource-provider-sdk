class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.references :cloud_service
      t.string :resource_type
      t.string :incarnation_id
      t.string :schema_version
      t.string :plan
      t.string :version 
      t.text :intrinsic_settings
      t.string :promotion_code
      t.string :connection_url #generated by the rp for the resource
      t.string :password        # password generated
      t.string :salt			#salt generated by the rp.
      t.timestamps
    end
  end
end
