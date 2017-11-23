require 'ruboty'
require 'wikipedia'

module Ruboty
  module Handlers
    class Wikipedia < Base
      DEFAULT_WIKIPEDIA_DOMAIN = 'en.wikipedia.org'
      DEFAULT_WIKIPEDIA_MESSAGE_WHEN_NOT_FOUND = 'No articles found.'

      env :WIKIPEDIA_DOMAIN, 'Wikipedia domain (default: en.wikipedia.org)', optional: true
      env :WIKIPEDIA_MESSAGE_WHEN_NOT_FOUND, 'Message when not found (default: No articles found.)', optional: true

      on(
        /(wikipedia|wiki) (?<keyword>.*?)\z/i,
        name: 'wikipedia',
        description: 'Returns the Wikipedia url that matches the keyword.'
      )

      def wikipedia(message)
        ::Wikipedia.configure { domain (ENV['WIKIPEDIA_DOMAIN'] || DEFAULT_WIKIPEDIA_DOMAIN) }
        page = ::Wikipedia.find message[:keyword]

        if page.summary.nil?
          message.reply(ENV['WIKIPEDIA_MESSAGE_WHEN_NOT_FOUND'] || DEFAULT_WIKIPEDIA_MESSAGE_WHEN_NOT_FOUND)
        else
          message.reply page.fullurl
        end
      end
    end
  end
end
