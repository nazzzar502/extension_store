class CopyPriceFromProduct < ActiveRecord::Migration[6.0]
  def copy
    Product.all.each do |product|
      line_item = product.line_item.find_by(product_id: product.id)
      if line_item 
        line_item.price = product.price
        line_item.save!
      end
    end
  end
end
