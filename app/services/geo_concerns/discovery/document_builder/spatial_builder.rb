module GeoConcerns
  module Discovery
    class DocumentBuilder
      class SpatialBuilder
        attr_reader :geo_concern

        def initialize(geo_concern)
          @geo_concern = geo_concern
        end

        # Builds spatial fields such as bounding box and solr geometry.
        # @param [AbstractDocument] discovery document
        def build(document)
          document.geo_rss_coverage = to_geo_rss
          document.solr_coverage = to_solr
        end

        private

          # Parses coverage field from geo work and instantiates a coverage object.
          # @return [GeoConcerns::Coverage] coverage object
          def coverage
            @coverage ||= GeoConcerns::Coverage.parse(geo_concern.coverage.first)
          end

          # Returns the coverage as georss.
          # @return [String] coverage in georss format
          def to_geo_rss
            "#{coverage.s} #{coverage.w} #{coverage.n} #{coverage.e}"
          end

          # Returns the coverage in solr format.
          # @return [String] coverage in solr format
          def to_solr
            "ENVELOPE(#{coverage.w}, #{coverage.e}, #{coverage.n}, #{coverage.s})"
          end
      end
    end
  end
end
