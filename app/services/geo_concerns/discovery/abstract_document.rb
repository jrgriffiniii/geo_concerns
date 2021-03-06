module GeoConcerns
  module Discovery
    class AbstractDocument
      attr_accessor :id, :provenance, :creator, :subject, :spatial, :temporal,
                    :title, :identifier, :description, :access_rights, :language,
                    :publisher, :slug, :solr_coverage, :geo_rss_coverage, :layer_year,
                    :date_modified, :geom_type, :format, :resource_type, :wxs_identifier,
                    :dct_references, :fgdc, :iso19139, :mods, :download, :url, :thumbnail

      # Cleans the document hash by removing unused fields.
      # @param [Hash] document hash
      # @return [Hash] cleaned document hash
      def clean_document(hash)
        hash.delete_if do |_k, v|
          begin
            v.nil? || v.empty?
          rescue
            false
          end
        end
      end

      def to_hash(_arg)
        raise 'this method should be overriden and return the document as a hash'
      end

      def to_json(_arg)
        raise 'this method should be overriden and return the document as json'
      end

      def to_xml(_arg)
        raise 'this method should be overriden and return the document as xml'
      end
    end
  end
end
