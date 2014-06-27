require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => localhost:9393,
    :user_name => postmaster@sandbox73556029f036414e836768aa29e0ecf6.mailgun.org,
    :password => nengmyun,
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end