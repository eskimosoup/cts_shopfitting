class ContactMailer < ActionMailer::Base
  default from: SITE_SETTINGS['Email']
  default to: SITE_SETTINGS['Email']
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_contact.subject
  #
  def new_contact(contact)
    @contact = contact
    cc_options = Rails.env.development? ? ["james@optimised.today", "james@eskimosoup.co.uk"] : ["mark.pearson@ctsshopfitting.co.uk", "steve.middleton@ctsshopfitting.co.uk"]
    mail cc: cc_options, subject: "Contact form submitted - #{SITE_SETTINGS['Name']}"
  end
end
