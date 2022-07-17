module Mutations
    class CreateItem < Mutations::BaseMutation
    argument :params, Types::Input::ItemInputType, required: true  
    field :item, Types::ItemType
  
    def resolve(params:)
        item_params = Hash params
  
        begin
          item = Item.create!(item_params)
  
          { item: item }
        rescue ActiveRecord::RecordInvalid => e
          GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
            " #{e.record.errors.full_messages.join(', ')}")
        end
      end
  end
end