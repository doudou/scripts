module Rock
    module Checks
        class System < Thor
            default_task :all

            desc "all", "runs all checks"
            def all
                instance_methods.each do |name|
                    send(name)
                end
            end
        end
    end
end

