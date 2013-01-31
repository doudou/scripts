require 'thor'
require 'rock/checks'

module Rock
    module Checks
        class CLI < Thor
            desc "check that the current Rock installation is sound"
            subcommand "system", Checks::System

            default_task :system
        end
    end
end

