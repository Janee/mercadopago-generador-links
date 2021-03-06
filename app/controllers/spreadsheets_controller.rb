class SpreadsheetsController < ApplicationController
  def new
    credentials = {
      client_id: params[:client_id],
      client_secret: params[:client_secret]
    }
    xlsx = Roo::Spreadsheet.open(params[:file])
    create_links(credentials, xlsx)
  end

  def create_links(credentials, xlsx)
    @data = xlsx.sheet('Data').parse(title: /(title)/i,
                                     currency: /(currency)/i,
                                     qty: /(quantity)/i,
                                     price: /(unit_price)/i,
                                     external: /(external_reference)/i)
    @data.each do |record|
      preference_data = {
        "items": [{
          "title": record[:title],
          "quantity": record[:qty],
          "currency_id": record[:currency],
          "unit_price": record[:price],
          "category_id": 'others'
        }],
        "external_reference": record[:external]
      }
      record[:link] = MercadoPagoService.preference(credentials,
                                                    preference_data)
    end
    respond_to do |format|
      format.html { render :results }
    end
  end
end
