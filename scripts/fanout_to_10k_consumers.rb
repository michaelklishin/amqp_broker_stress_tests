#!/usr/bin/env ruby

Bundler.setup

require "amqp"

AMQP.start do |connection|
  ch = AMQP::Channel.new(connection)
  ex = ch.fanout("amq.fanout")

  10_000.times do
    ch.queue("", :exclusive => true).bind(ex).subscribe do |head, body|
      # no-op
    end
  end


  EventMachine.add_periodic_timer(10) do
    ex.publish("Ohai RabbitMQ!")
  end



  show_stopper = Proc.new {
    puts "Disconnecting..."
    connection.close { EventMachine.stop }
  }

  Signal.trap("TERM", &show_stopper)
  Signal.trap("INT",  &show_stopper)
end