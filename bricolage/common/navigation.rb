# encoding: utf-8
module Crawlers
  module Bricolage
    module Common
      module Navigation
        def find_show_pages(page)
          #masiv ot linkove
          blocks = page.search('a.name')
          blocks.map do |block|
            block.attr('href')
          end

        end

      def next_raw_search_page(page)
          # string or nil
          next_page = page.search('ul.pagination li.pagination-next.disabled span')
          link = page.search('ul.pagination .pagination-next')
             link.search('a').attr('href').value if next_page.none?


        end
      end
    end
  end
end
