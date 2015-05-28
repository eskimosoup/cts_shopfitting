class ContactMailer < ActionMailer::Base
  default from: "from@yoursite.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_contact.subject
  #
  def new_contact(contact)
    @contact = contact

    mail to: SITE_SETTINGS['Email']
    mail to: "steve.middleton@ctsshopfitting.co.uk"
  end
end
