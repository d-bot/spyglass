module Spyglass

  class Server
    include Singleton
    include Logging

    def start
      # Opens the main listening socket for the server. Now the server is responsive to
      # incoming connections.
      sock = TCPServer.open(Config.host, Config.port)
      out "Listening on port #{Config.host}:#{Config.port}"

      Lookout.instance.start(sock)
    end
  end
end

