# Internal Event Bus

This example shows how to use Rails's internal event bus to to event-based
processing.  See [ActiveSupport::Notifications](https://api.rubyonrails.org/classes/ActiveSupport/Notifications.html)
for more details.

A single `EchoController` publishes events.

Two subscribers listen for events.  They are registered in the
`event_subscribers.rb` initializer.  One uses a regex to listen for multiple
events, while the other listens only to a single specific event type.

## Running the Server

You can start the application with:

> $ bin/rails server

And use the base URL http://localhost:3000/echo/index

`GET` requests will get echoed in the Rails logs, and all other events internal
to Rails will be listed there too.
