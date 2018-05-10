class UserNotifierMailer < ApplicationMailer
#     # class UserNotifier < ActionMailer::Base
#         default :from => 'any_from_address@example.com'
      
#         # send a signup email to the user, pass in the user object that   contains the user's email address
#         def send_signup_email(user)
#           @user = user
#           mail( :to => @user.email,
#           :subject => 'Thanks for signing up for our amazing app' )
#         end
#       end
# end

  default :from => 'any_from_address@example.com'
  def send_signup_email(recipient)
    #  mail( :to => current_user.email,
     mail( :to => recipient.email,
    :subject =>'New Listing Added' ) #*****

  end
end
