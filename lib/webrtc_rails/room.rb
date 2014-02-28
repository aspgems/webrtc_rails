module WebrtcRails
  class Room
    include Virtus.model
    extend ActiveModel::Naming
    include ActiveModel::Conversion
    include ActiveModel::Validations

    attribute :name, String
    attribute :slug, String

    validates :name, presence: true
    validates :slug, presence: true

    def persisted?
      false
    end

    def initialize(attributes = {})
      attributes.merge(slug: URI.escape(name).parameterize) unless name.nil?
      @attributes = attributes
    end

    def to_param
      slug
    end
  end
end
