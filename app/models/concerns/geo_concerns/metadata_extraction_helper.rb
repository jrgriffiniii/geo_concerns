module GeoConcerns
  module MetadataExtractionHelper
    # Extracts properties from the constitutent external metadata file
    # @return [Hash]
    def extract_metadata
      return {} if metadata_files.blank?
      # TODO: Does not support multiple external metadata files
      raise NotImplementedError if metadata_files.length > 1
      metadata_files.first.extract_metadata
    end

    # Sets properties from the constitutent external metadata file
    def populate_metadata
      extract_metadata.each do |k, v|
        send("#{k}=".to_sym, v) # set each property
      end
    end

    attr_accessor :should_populate_metadata

    def should_populate_metadata=(args)
      @should_populate_metadata = args.present?
      return unless should_populate_metadata
      populate_metadata
      save
    end
  end
end
