require_relative('page_parser')
class DataFilter < PageParser
  attr_accessor :document

  def initialize(document)
    @document = document
  end

  def filter_by_class(css_class, parsed_page)
    super
  end

  def item_cards
    filter_by_class('li.zg-item-immersion', @document)
  end

  def product_price
    filter_by_class('span.p13n-sc-price', @document)
  end
end