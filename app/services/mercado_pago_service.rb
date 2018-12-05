# Mercado Pago Payments
module MercadoPagoService
  class << self
    def preference(params, preference_params)
      mp = MercadoPago.new(params[:client_id], params[:client_secret])
      preference = mp.create_preference(preference_params)

      preference['response']['init_point']
    end
  end
end
