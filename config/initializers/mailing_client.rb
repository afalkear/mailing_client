Mailing::HYDRA = Typhoeus::Hydra.new
Mailing::HOST = case Rails.env
      when "production"
       "padma-mailing.herokuapp.com"
      when "development"
       "localhost:3004"
      when "staging"
       "padma-mailing-staging.herokuapp.com"
      when "test"
       "localhost:3004"
    end