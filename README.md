# Airbnbee

### Routes:

```
--[ Route 1 ]----------------------------------------------------
Prefix            | new_user_session
Verb              | GET
URI               | /users/sign_in(.:format)
Controller#Action | devise/sessions#new

--[ Route 2 ]----------------------------------------------------
Prefix            | user_session
Verb              | POST
URI               | /users/sign_in(.:format)
Controller#Action | devise/sessions#create

--[ Route 3 ]----------------------------------------------------
Prefix            | destroy_user_session
Verb              | DELETE
URI               | /users/sign_out(.:format)
Controller#Action | devise/sessions#destroy

--[ Route 4 ]----------------------------------------------------
Prefix            | new_user_password
Verb              | GET
URI               | /users/password/new(.:format)
Controller#Action | devise/passwords#new

--[ Route 5 ]----------------------------------------------------
Prefix            | edit_user_password
Verb              | GET
URI               | /users/password/edit(.:format)
Controller#Action | devise/passwords#edit

--[ Route 6 ]----------------------------------------------------
Prefix            | user_password
Verb              | PATCH
URI               | /users/password(.:format)
Controller#Action | devise/passwords#update

--[ Route 7 ]----------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /users/password(.:format)
Controller#Action | devise/passwords#update

--[ Route 8 ]----------------------------------------------------
Prefix            |
Verb              | POST
URI               | /users/password(.:format)
Controller#Action | devise/passwords#create

--[ Route 9 ]----------------------------------------------------
Prefix            | cancel_user_registration
Verb              | GET
URI               | /users/cancel(.:format)
Controller#Action | devise/registrations#cancel

--[ Route 10 ]----------------------------------------------------
Prefix            | new_user_registration
Verb              | GET
URI               | /users/sign_up(.:format)
Controller#Action | devise/registrations#new

--[ Route 11 ]----------------------------------------------------
Prefix            | edit_user_registration
Verb              | GET
URI               | /users/edit(.:format)
Controller#Action | devise/registrations#edit

--[ Route 12 ]----------------------------------------------------
Prefix            | user_registration
Verb              | PATCH
URI               | /users(.:format)
Controller#Action | devise/registrations#update

--[ Route 13 ]----------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /users(.:format)
Controller#Action | devise/registrations#update

--[ Route 14 ]----------------------------------------------------
Prefix            |
Verb              | DELETE
URI               | /users(.:format)
Controller#Action | devise/registrations#destroy

--[ Route 15 ]----------------------------------------------------
Prefix            |
Verb              | POST
URI               | /users(.:format)
Controller#Action | devise/registrations#create

--[ Route 16 ]----------------------------------------------------
Prefix            | root
Verb              | GET
URI               | /
Controller#Action | insects#index

--[ Route 17 ]----------------------------------------------------
Prefix            | insect_bookings
Verb              | GET
URI               | /insects/:insect_id/bookings(.:format)
Controller#Action | bookings#index

--[ Route 18 ]----------------------------------------------------
Prefix            |
Verb              | POST
URI               | /insects/:insect_id/bookings(.:format)
Controller#Action | bookings#create

--[ Route 19 ]----------------------------------------------------
Prefix            | new_insect_booking
Verb              | GET
URI               | /insects/:insect_id/bookings/new(.:format)
Controller#Action | bookings#new

--[ Route 20 ]----------------------------------------------------
Prefix            | edit_insect_booking
Verb              | GET
URI               | /insects/:insect_id/bookings/:id/edit(.:format)
Controller#Action | bookings#edit

--[ Route 21 ]----------------------------------------------------
Prefix            | insect_booking
Verb              | GET
URI               | /insects/:insect_id/bookings/:id(.:format)
Controller#Action | bookings#show

--[ Route 22 ]----------------------------------------------------
Prefix            |
Verb              | PATCH
URI               | /insects/:insect_id/bookings/:id(.:format)
Controller#Action | bookings#update

--[ Route 23 ]----------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /insects/:insect_id/bookings/:id(.:format)
Controller#Action | bookings#update

--[ Route 24 ]----------------------------------------------------
Prefix            |
Verb              | DELETE
URI               | /insects/:insect_id/bookings/:id(.:format)
Controller#Action | bookings#destroy

--[ Route 25 ]----------------------------------------------------
Prefix            | insects
Verb              | GET
URI               | /insects(.:format)
Controller#Action | insects#index

--[ Route 26 ]----------------------------------------------------
Prefix            |
Verb              | POST
URI               | /insects(.:format)
Controller#Action | insects#create

--[ Route 27 ]----------------------------------------------------
Prefix            | new_insect
Verb              | GET
URI               | /insects/new(.:format)
Controller#Action | insects#new

--[ Route 28 ]----------------------------------------------------
Prefix            | edit_insect
Verb              | GET
URI               | /insects/:id/edit(.:format)
Controller#Action | insects#edit

--[ Route 29 ]----------------------------------------------------
Prefix            | insect
Verb              | GET
URI               | /insects/:id(.:format)
Controller#Action | insects#show

--[ Route 30 ]----------------------------------------------------
Prefix            |
Verb              | PATCH
URI               | /insects/:id(.:format)
Controller#Action | insects#update

--[ Route 31 ]----------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /insects/:id(.:format)
Controller#Action | insects#update

--[ Route 32 ]----------------------------------------------------
Prefix            |
Verb              | DELETE
URI               | /insects/:id(.:format)
Controller#Action | insects#destroy

--[ Route 33 ]----------------------------------------------------
Prefix            | user_booking
Verb              | GET
URI               | /users/:user_id/bookings/:id(.:format)
Controller#Action | bookings#show

--[ Route 34 ]----------------------------------------------------
Prefix            | users
Verb              | GET
URI               | /users(.:format)
Controller#Action | users#index

--[ Route 35 ]----------------------------------------------------
Prefix            |
Verb              | POST
URI               | /users(.:format)
Controller#Action | users#create

--[ Route 36 ]----------------------------------------------------
Prefix            | new_user
Verb              | GET
URI               | /users/new(.:format)
Controller#Action | users#new

--[ Route 37 ]----------------------------------------------------
Prefix            | edit_user
Verb              | GET
URI               | /users/:id/edit(.:format)
Controller#Action | users#edit

--[ Route 38 ]----------------------------------------------------
Prefix            | user
Verb              | GET
URI               | /users/:id(.:format)
Controller#Action | users#show

--[ Route 39 ]----------------------------------------------------
Prefix            |
Verb              | PATCH
URI               | /users/:id(.:format)
Controller#Action | users#update

--[ Route 40 ]----------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /users/:id(.:format)
Controller#Action | users#update

--[ Route 41 ]----------------------------------------------------
Prefix            |
Verb              | DELETE
URI               | /users/:id(.:format)
Controller#Action | users#destroy

--[ Route 42 ]----------------------------------------------------
Prefix            | api_insects
Verb              | GET
URI               | /api/insects(.:format)
Controller#Action | insects#api_index

--[ Route 43 ]----------------------------------------------------
Prefix            | turbo_recede_historical_location
Verb              | GET
URI               | /recede_historical_location(.:format)
Controller#Action | turbo/native/navigation#recede

--[ Route 44 ]----------------------------------------------------
Prefix            | turbo_resume_historical_location
Verb              | GET
URI               | /resume_historical_location(.:format)
Controller#Action | turbo/native/navigation#resume

--[ Route 45 ]----------------------------------------------------
Prefix            | turbo_refresh_historical_location
Verb              | GET
URI               | /refresh_historical_location(.:format)
Controller#Action | turbo/native/navigation#refresh

--[ Route 46 ]----------------------------------------------------
Prefix            | rails_postmark_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/postmark/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/postmark/inbound_emails#create

--[ Route 47 ]----------------------------------------------------
Prefix            | rails_relay_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/relay/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/relay/inbound_emails#create

--[ Route 48 ]----------------------------------------------------
Prefix            | rails_sendgrid_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/sendgrid/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/sendgrid/inbound_emails#create

--[ Route 49 ]----------------------------------------------------
Prefix            | rails_mandrill_inbound_health_check
Verb              | GET
URI               | /rails/action_mailbox/mandrill/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/mandrill/inbound_emails#health_check

--[ Route 50 ]----------------------------------------------------
Prefix            | rails_mandrill_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/mandrill/inbound_emails(.:format)
Controller#Action | action_mailbox/ingresses/mandrill/inbound_emails#create

--[ Route 51 ]----------------------------------------------------
Prefix            | rails_mailgun_inbound_emails
Verb              | POST
URI               | /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)
Controller#Action | action_mailbox/ingresses/mailgun/inbound_emails#create

--[ Route 52 ]----------------------------------------------------
Prefix            | rails_conductor_inbound_emails
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#index

--[ Route 53 ]----------------------------------------------------
Prefix            |
Verb              | POST
URI               | /rails/conductor/action_mailbox/inbound_emails(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#create

--[ Route 54 ]----------------------------------------------------
Prefix            | new_rails_conductor_inbound_email
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/new(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#new

--[ Route 55 ]----------------------------------------------------
Prefix            | edit_rails_conductor_inbound_email
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#edit

--[ Route 56 ]----------------------------------------------------
Prefix            | rails_conductor_inbound_email
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#show

--[ Route 57 ]----------------------------------------------------
Prefix            |
Verb              | PATCH
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#update

--[ Route 58 ]----------------------------------------------------
Prefix            |
Verb              | PUT
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#update

--[ Route 59 ]----------------------------------------------------
Prefix            |
Verb              | DELETE
URI               | /rails/conductor/action_mailbox/inbound_emails/:id(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails#destroy

--[ Route 60 ]----------------------------------------------------
Prefix            | new_rails_conductor_inbound_email_source
Verb              | GET
URI               | /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails/sources#new

--[ Route 61 ]----------------------------------------------------
Prefix            | rails_conductor_inbound_email_sources
Verb              | POST
URI               | /rails/conductor/action_mailbox/inbound_emails/sources(.:format)
Controller#Action | rails/conductor/action_mailbox/inbound_emails/sources#create

--[ Route 62 ]----------------------------------------------------
Prefix            | rails_conductor_inbound_email_reroute
Verb              | POST
URI               | /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)
Controller#Action | rails/conductor/action_mailbox/reroutes#create

--[ Route 63 ]----------------------------------------------------
Prefix            | rails_conductor_inbound_email_incinerate
Verb              | POST
URI               | /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)
Controller#Action | rails/conductor/action_mailbox/incinerates#create

--[ Route 64 ]----------------------------------------------------
Prefix            | rails_service_blob
Verb              | GET
URI               | /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)
Controller#Action | active_storage/blobs/redirect#show

--[ Route 65 ]----------------------------------------------------
Prefix            | rails_service_blob_proxy
Verb              | GET
URI               | /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)
Controller#Action | active_storage/blobs/proxy#show

--[ Route 66 ]----------------------------------------------------
Prefix            |
Verb              | GET
URI               | /rails/active_storage/blobs/:signed_id/*filename(.:format)
Controller#Action | active_storage/blobs/redirect#show

--[ Route 67 ]----------------------------------------------------
Prefix            | rails_blob_representation
Verb              | GET
URI               | /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format)
Controller#Action | active_storage/representations/redirect#show

--[ Route 68 ]----------------------------------------------------
Prefix            | rails_blob_representation_proxy
Verb              | GET
URI               | /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)
Controller#Action | active_storage/representations/proxy#show

--[ Route 69 ]----------------------------------------------------
Prefix            |
Verb              | GET
URI               | /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)
Controller#Action | active_storage/representations/redirect#show

--[ Route 70 ]----------------------------------------------------
Prefix            | rails_disk_service
Verb              | GET
URI               | /rails/active_storage/disk/:encoded_key/*filename(.:format)
Controller#Action | active_storage/disk#show

--[ Route 71 ]----------------------------------------------------
Prefix            | update_rails_disk_service
Verb              | PUT
URI               | /rails/active_storage/disk/:encoded_token(.:format)
Controller#Action | active_storage/disk#update

--[ Route 72 ]----------------------------------------------------
Prefix            | rails_direct_uploads
Verb              | POST
URI               | /rails/active_storage/direct_uploads(.:format)
Controller#Action | active_storage/direct_uploads#create
```
