
require_relative 'common'

module Crawlers
  module Bricolage
    class LongCrawler
      include Crawlers::CompactCrawler::Long
      include Crawlers::Bricolage::Common::Navigation
      include Crawlers::Bricolage::Common::Long
    end
  end
end
