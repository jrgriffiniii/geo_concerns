# Attributes and methods for vector works
module VectorWorkBehavior
  extend ActiveSupport::Concern
  include ::MetadataExtractionHelper

  included do
    type [Hydra::PCDM::Vocab::PCDMTerms.Object,
          Hydra::Works::Vocab::WorksTerms.GenericWork,
          ::Vocab::GeoTerms.VectorWork]
  end

  def vector_files
    members.select(&:vector_file?)
  end

  def metadata_files
    members.select(&:external_metadata_file?)
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
    false
  end

  def raster_file?
    false
  end

  def vector_work?
    true
  end

  def vector_file?
    false
  end

  def external_metadata_file?
    false
  end

  # Retrieve all Raster Works for which this Vector Work can be extracted
  # @return [Array]
  def raster_works
    aggregated_by.select { |parent| parent.class.included_modules.include?(::RasterWorkBehavior) }
  end

  def to_solr(solr_doc = {})
    super.tap do |doc|
      doc[ActiveFedora.index_field_mapper.solr_name("ordered_by", :symbol)] ||= []
      doc[ActiveFedora.index_field_mapper.solr_name("ordered_by", :symbol)] += send(:ordered_by_ids)
    end
  end
end
