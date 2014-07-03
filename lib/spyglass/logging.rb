module Spyglass
  module Logging
    def out(message)
      $stdout.puts preamble + message
    end

    def err(message)
      $stderr.puts preamble + message
    end

    def verbose(message)
      return unless Config.verbose
      out(message)
    end

    def vverbose(message)
      return unless Config.vverbose
      out(message)
    end

    def preamble
      "[#{Process.pid}] [#{self.class.name}] "
    end
  end
end
