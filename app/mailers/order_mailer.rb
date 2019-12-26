class OrderMailer < ApplicationMailer

  default from: "tariq.sulehri@khaleef.com" 
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.recevied.subject
  #
  def recevied(order)
    @order = order

    mail to: "tariq.sulehir@khaleef.com", subject: "Rails Store Order Conformation.."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped
    @greeting = "Hi"

    mail to: "tariq.sulehir@khaleef.com"
  end
end
