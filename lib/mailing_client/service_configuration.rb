module MailingClient
  module ServiceConfiguration
    def self.included(base)
      base.send('use_hydra', Mailing::HYDRA)
      base.send('force_ssl')
      base.send('set_resource_host', Mailing::HOST)
      base.send('configure_index_response', {collection: 'data', total: 'total'})
    end
  end
end