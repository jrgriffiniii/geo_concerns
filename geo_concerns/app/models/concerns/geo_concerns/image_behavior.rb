module GeoConcerns
  module ImageBehavior
    extend ActiveSupport::Concern
    include ::CurationConcerns::GenericWorkBehavior
    include ::CurationConcerns::BasicMetadata
    include ::GeoConcerns::BasicGeoMetadata

    included do
      validates :width, presence: { message: 'Your work must have a width.' }
      validates :height, presence: { message: 'Your work must have a height.' }
    end
  end
end