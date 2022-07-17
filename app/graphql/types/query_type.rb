module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Items
    field :items,
          [Types::ItemType],
          null: false,
          description: 'Return a list of items'

    def items
      Item.all
    end

    field :item, ItemType, 'Find an item by ID' do
      argument :id, ID
    end

    def item(id:)
      Item.find(id)
    end

    # Artists
    field :artists,
          [Types::ArtistType],
          null: false,
          description: 'Return a list of artists'

    def artists
      Artist.all
    end

    field :artist, ArtistType, 'Find an artist by ID' do
      argument :id, ID
    end

    def artist(id:)
      Artist.find(id)
    end
  end
end
