# Mercado Pago Payments
module MercadoPagoService
  class << self
    def preference(credentials, preference_data)
      mp = MercadoPago.new(credentials[:client_id], credentials[:client_secret])
      preference = mp.create_preference(preference_data)

      preference['response']['init_point']
    end
  end
end
