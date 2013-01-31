class Rock::Checks::System
    desc "looks for packages that are still using the ROCK_CMAKE_MACROS environment variable in their CMake code"
    
    def oldstyle_find_package
        Autoproj.manifest.each_package do |pkg|
            pkg = pkg.autobuild
            cmake_txt = File.join(pkg.srcdir, "CMakeLists.txt")
            if File.file?(cmake_txt)
                data = File.read(cmake_txt)
                warn :package, pkg.name, "#{cmake_txt} refers to the ROCK_CMAKE_MACROS environment variable", long_info
            end
        end
    end
end

