require 'wit'
require 'singleton'

class WitExtension
  include Singleton

  def initializer
    access_token = "7DO5OGFBNMKCLW57NIIO5I7CS27RAJCU"
    actions = {
        send: -> (request, response) {
          # do something when bot sends message
        },

        findRestaurants: -> (request) {
          # 
        }
    }

    @client = Wit.new(access_token: access_token, actions: actions)
  end


  def client
    return @client
  end
  def set_conversation(conversation)
    @conversation = conversation
  end

end