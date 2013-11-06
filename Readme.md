# Flowdock OAuth Client Demo

This repo contains a demo application that uses Flowdock API via OAuth 2.0. The
client-side part utilises streaming API.

The app fetches latest chat messages for the selected flow in Flowdock and
streams new messages. Messages can also be sent.

## Setup

 - configure OAuth credentials and cookie secret as environment variables
(or .env). See sample.env.
 - `bundle install`
 - `foreman start`

 The Ruby application is used to sever the client-side JS and as redirect
 endpoint for OAuth.

 Flowdock OAuth credentials can be created at
 https://www.flowdock.com/oauth/applications.
