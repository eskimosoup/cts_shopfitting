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
    mail subject: "Contact form submitted - #{SITE_SETTINGS['Name']}"
  end
end
