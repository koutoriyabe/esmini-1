include_guard()

# ############################### Setting implot libraries ######################################################

macro(set_implot_libs)

    if(APPLE)
        message("implot not yet supported for macOS")
    elseif(LINUX)
        set(IMPLOT_LIBRARIES
            optimized
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/glfw3.a
            debug
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/glfw3d.a
            optimized
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/implot.a
            debug
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/implot.a)
    elseif(MSVC)
        set(IMPLOT_LIBRARIES
            optimized
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/glfw3.lib
            debug
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/glfw3d.lib
            optimized
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/implot.lib
            debug
            ${EXTERNALS_IMPLOT_LIBRARY_PATH}/implot.lib)
    elseif(MINGW)
        message("implot not yet supported for MinGW")
    endif()

endmacro()
