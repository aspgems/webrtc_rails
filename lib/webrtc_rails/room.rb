module WebrtcRails
  class Room
    include Virtus.model
    extend ActiveModel::Naming
    include ActiveModel::Conversion
    include ActiveModel::Validations

    attribute :name, String

    validates :name, presence: true, parameterizable: true

    def persisted?
      false
    end

    def to_param
      URI.escape(name).parameterize
    end
  end
end
