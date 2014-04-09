#!/usr/bin/env ruby
#coding: utf-8

require 'hipchat'

client = HipChat::Client.new(ENV['HIPCHAT_API_TOKEN'],  :api_version => 'v2')
items  = JSON.parse(client[ENV['HIPCHAT_ROOM']].history())['items']

# NOTE: Heroku Scheduler should be set to "Every 10 minutes"
items.each { |item|
  next unless item['from'] == "Qiita:Team"
  next unless (Time.now - Time.parse(item['date'])) / 60 <= 10 # check if in 10min

  system("curl --data-urlencode 'source=#{item['message']}' -d format=html #{ENV['IDOBATA_END']}")
}

