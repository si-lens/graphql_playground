module Types
    module Input
      class ItemInputType < Types::BaseInputObject
        argument :title, String, required: false
        argument :description, String, required: false
        argument :image_url, String, required: false
        argument :artist_id, Integer, required: true
      end
    end
  end