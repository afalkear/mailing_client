require 'mailing_client/service_configuration'
module Mailing
  class ScheduledMail < LogicalModel
    include MailingClient::ServiceConfiguration

    set_resource_path '/api/v0/scheduled_mails'
    set_api_key "app_key", Mailing::API_KEY

    attribute :id                          # The schedule ID
    attribute :template_id                 # The template ID
    attribute :recipient_email             # The person who is receiving the email
    attribute :send_at                     # When the email has been sent or will be sent
    attribute :delivered_at                # When the email has been delivered
    attribute :contact_id                  # The padma-contact id
    attribute :username                    # The username who sends the mail
    attribute :template_name               # The template name
    
  end
end