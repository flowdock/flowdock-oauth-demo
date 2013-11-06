# Flowdock OAuth Client Demo

This repo contains a demo application that uses Flowdock API via OAuth 2.0 over. The
client-side part utilises streaming API.

The app fetches latest chat messages for the selected flow in Flowdock and
streams new messages. Messages can also be sent to the flow.

[App.rb](https://github.com/flowdock/flowdock-oauth-demo/blob/master/app.rb)
contains Sinatra app that is the redirect URL endpoint for OAuth.

[Index.html](https://github.com/flowdock/flowdock-oauth-demo/blob/master/static/index.html)
is a JavaScript client that interacts with Flowdock API using CORS.

## Setup

 - configure OAuth credentials and cookie secret as environment variables
(or .env). See sample.env.
 - `bundle install`
 - `foreman start`

 The Ruby application is used to sever the client-side JS and as redirect
 endpoint for OAuth.

 Flowdock OAuth credentials can be created at
 https://www.flowdock.com/oauth/applications.
