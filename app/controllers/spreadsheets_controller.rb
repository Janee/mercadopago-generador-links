class SpreadsheetsController < ApplicationController
  def create_links
    xlsx = Roo::Spreadsheet.open(params[:file])
    data = xlsx.sheet('Data').parse(title: /(title)/i,
                                    currency: /(currency)/i,
                                    qty: /(quantity)/i,
                                    price: /(unit_price)/i,
                                    external: /(external_reference)/i)
    data.each do |record|
      preference_params = {
        "items": [{
          "title": record[:title],
          "quantity": record[:qty],
          "currency_id": record[:currency],
          "unit_price": record[:price],
          "category_id": 'others'
        }],
        "external_reference": record[:external]
      }
      puts preference_params

      byebug
    end

  end
end
