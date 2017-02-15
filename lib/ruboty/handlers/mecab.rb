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
          str = message.body.sub(/ruboty mecab/, "")

          natto.parse(str) do |n|
            message.reply("#{n.surface} #{n.feature}")
          end
        end
      end
    end
  end
end
