# encoding: utf-8
module Crawlers
  module Bricolage
    module Common
      module Long

        def extract_model_name(page)
         page.search('.col-md-6 .col-md-6 h1').text
        end

        def extract_price(page)

          page.search('.price').text.gsub(',','.').to_f.to_s + " лв"


        end

        def extract_promotion(page)

            true if  page.search('.promotion').text
                  page.search('.price del').any?

        end

        # availability is default

        def extract_ean(page)
          ean =  page.search('#home span').text
          ean.delete('\r\n\t')

        end

        def extract_article_id(page)
          page.search('.col-md-12.bricolage-code').text.to_s.strip

        end

      end
    end
  end
end
