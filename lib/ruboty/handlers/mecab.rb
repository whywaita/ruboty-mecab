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
            result += ("#{n.surface} #{n.feature}\n")
          end

          message.reply(result)
        end
      end
    end
  end
end
