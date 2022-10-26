module Mailing
  unless defined? HYDRA
    HYDRA = Typhoeus::Hydra.new
  end

  HOST = case Rails.env
    when "production"
     "mailing.padm.am"
    when "development"
     "localhost:3020"
    when "staging"
     "padma-mailing-staging.herokuapp.com"
    when "test"
     "localhost:3020"
  end
end
