require 'natto'

module Ruboty
  module Handlers
    class Mecab < Base
      on( /mecab (?<string>.+)/,
        name: 'mecab',
        description: 'show wakati',
      )

      private

      def mecab(message)
        if message.from != robot.name
          natto = Natto::MeCab.new

          # delete prefix
          str = message.body.sub(/(.*) mecab/, "")

          # wakati
          result = ""
          natto.parse(str) do |n|
            if n.surface == ""
              # nothing
            else
              result += ("#{n.surface} #{n.feature}\n")
            end
          end

          # reply
          message.reply(result)
        end
      end
    end
  end
end
