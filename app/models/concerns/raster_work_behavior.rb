# Attributes and methods for raster works
module RasterWorkBehavior
  extend ActiveSupport::Concern
  include ::MetadataExtractionHelper

  included do
    type [Hydra::PCDM::Vocab::PCDMTerms.Object,
          Hydra::Works::Vocab::WorksTerms.GenericWork,
          ::Vocab::GeoTerms.RasterWork]
  end

  def raster_files
    members.select(&:raster_file?)
  end

  def metadata_files
    members.select(&:external_metadata_file?)
  end

  def vector_works
    members.select(&:vector_work?)
  end

  # Defines type by what it is and isn't
  # @return [Boolean]
  def image_work?
    false
  end

  def image_file?
    false
  end

  def raster_work?
    true
  end

  def raster_file?
    false
  end

  def vector_work?
    false
  end

  def vector_file?
    false
  end

  def external_metadata_file?
    false
  end

  # Retrieve all Image Works for which georeferencing generates this Raster Work
  # @return [Array]
  def image_works
    aggregated_by.select { |parent| parent.class.included_modules.include?(::ImageWorkBehavior) }
  end

  # Retrieve the only Image Works for which georeferencing generates this Raster Work
  # @return [GeoConcerns::ImageWork]
  def image_work
    image_works.first
  end

  def to_solr(solr_doc = {})
    super.tap do |doc|
      doc[ActiveFedora.index_field_mapper.solr_name("ordered_by", :symbol)] ||= []
      doc[ActiveFedora.index_field_mapper.solr_name("ordered_by", :symbol)] += send(:ordered_by_ids)
    end
  end
end
