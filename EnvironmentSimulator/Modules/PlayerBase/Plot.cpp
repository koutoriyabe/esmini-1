#include "Plot.hpp"

Plot::Plot(std::vector<scenarioengine::Object*> objects)
{
    for (const auto& object: objects)
    {
        plotObjects.emplace_back(std::make_unique<PlotObject>(object->GetMaxAcceleration(), object->GetMaxDeceleration(), object->GetMaxSpeed()));
    }
    glfwSetErrorCallback(glfw_error_callback);
        if (!glfwInit())
            std::cerr << "Something is wrong in IMGUI, cant init!" << std::endl;

        // Decide GL+GLSL versions
    #if defined(IMGUI_IMPL_OPENGL_ES2)
        // GL ES 2.0 + GLSL 100
        const char* glsl_version = "#version 100";
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
        glfwWindowHint(GLFW_CLIENT_API, GLFW_OPENGL_ES_API);
    #elif defined(__APPLE__)
        // GL 3.2 + GLSL 150
        const char* glsl_version = "#version 150";
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
        glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
        glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);            // Required on Mac
    #else
        // GL 3.0 + GLSL 130
        glsl_version = "#version 330";
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
        glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
        // glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);            // 3.0+ only
    #endif
}

void Plot::updateData(std::vector<Object*> objects, double dt)
{
    for (size_t i = 0; i < objects.size(); i++)
    {
        plotObjects[i]->updateData(objects[i], dt);
    }
}

void Plot::renderPlot(const char* name, float window_width, float window_height)
{
    std::string plot_name = "";
    ImGui::SetNextWindowSize(ImVec2(window_width, window_height), ImGuiCond_Once);
    ImGui::SetNextWindowPos(ImVec2(0, 0), ImGuiCond_Once);
    ImGui::Begin(name, nullptr, ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoTitleBar);

    if (ImGui::IsKeyPressed(ImGuiKey_Tab))
    {
        selection += 1;
        if (selection > plotObjects.size() - 1)
        {
            selection = 0;
        }
    }
    // for (size_t i = 0; i < plotObjects.size(); i++)
    for (const auto& d : plotObjects[selection]->plotData)
    {
        // Adjust axes
        switch(d.first)
        {
            case(PlotCategories::Time):
            {
                plot_name = "Time";
                if (!d.second.empty() && d.second.back() > plotObjects[selection]->getTimeMax())
                {
                    x_scaling = ImPlotAxisFlags_AutoFit;
                }
                break;
            }
            case(PlotCategories::LatVel):
            {
                plot_name = "Lateral Velocity";
                ImPlot::SetNextAxesLimits(-5.0f, plotObjects[selection]->getTimeMax(), -1.0f, 1.0f);
                break;
            }
            case(PlotCategories::LongVel):
            {
                plot_name = "Longitudinal Velocity";
                ImPlot::SetNextAxesLimits(-5.0f, plotObjects[selection]->getTimeMax(), -1.0, plotObjects[selection]->getMaxSpeed() + 5.0f);
                break;
            }
            case(PlotCategories::LatA):
            {
                plot_name = "LatA";
                ImPlot::SetNextAxesLimits(-5.0f, plotObjects[selection]->getTimeMax(), plotObjects[selection]->getMaxDecel(), plotObjects[selection]->getMaxAcc());
                break;
            }
            case(PlotCategories::LongA):
            {
                plot_name = "LongA";
                ImPlot::SetNextAxesLimits(-5.0f, plotObjects[selection]->getTimeMax(), plotObjects[selection]->getMaxDecel(), plotObjects[selection]->getMaxAcc());
                break;
            }
            case(PlotCategories::LaneOffset):
            {
                plot_name = "Offset from current lane";
                ImPlot::SetNextAxesLimits(-5.0f, plotObjects[selection]->getTimeMax(), -2.5, 2.5);
                break;
            }
        }


        // Plot (but not time over time or X over X)
        if (d.first == PlotCategories::Time)
        {
            continue;
        }
        else
        {
            ImPlot::BeginPlot(plot_name.c_str(), ImVec2(-1, 150));
            ImPlot::SetupAxes("x", "y", x_scaling, y_scaling);
            ImPlot::PlotLine(("Object " + std::to_string(selection)).c_str(), plotObjects[selection]->plotData.at(PlotCategories::Time).data(), d.second.data(), static_cast<int>(plotObjects[selection]->plotData.at(PlotCategories::Time).size()));
            ImPlot::EndPlot();
        }
    // ImPlot::SetNextMarkerStyle(ImPlotMarker_Circle);
    }
    ImGui::End();
}

void Plot::renderImguiWindow()
{
    // Create window with graphics context
    window = glfwCreateWindow(800, 900, "Lineplot", nullptr, nullptr);
    if (window == nullptr)
        std::cerr << "Something is wrong in IMGUI, cant create window!" << std::endl;
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1); // Enable vsync
    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImPlot::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); 
    static_cast<void>(io);
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    // Setup Dear ImGui style
    ImGui::StyleColorsDark();
    //ImGui::StyleColorsLight();
    ImVec4 clear_color = ImVec4(0.45f, 0.55f, 0.60f, 1.00f);

    // Setup Platform/Renderer backends
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init(glsl_version);

    // Our state
    while (!glfwWindowShouldClose(window)) 
    {
        // Poll and handle events (inputs, window resize, etc.)
        // You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to tell if dear imgui wants to use your inputs.
        // - When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application, or clear/overwrite your copy of the mouse data.
        // - When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application, or clear/overwrite your copy of the keyboard data.
        // Generally you may always pass all inputs to dear imgui, and hide them from your application based on those two flags.
        glfwPollEvents();

        // Start the Dear ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        int window_w, window_h;
        glfwGetWindowSize(window, &window_w, &window_h);
        renderPlot("Line plot", static_cast<float>(window_w), static_cast<float>(window_h));

        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(clear_color.x * clear_color.w, clear_color.y * clear_color.w, clear_color.z * clear_color.w, clear_color.w);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }

    #ifdef __EMSCRIPTEN__
    EMSCRIPTEN_MAINLOOP_END;
    #endif

    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImPlot::DestroyContext();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();
}

void Plot::glfw_error_callback(int error, const char* description)
{
    fprintf(stderr, "GLFW Error %d: %s\n", error, description);
}

Plot::PlotObject::PlotObject(float max_acc, float max_decel, float max_speed) : 
time_max_(30.0f), 
max_acc_(max_acc), 
max_decel_(-max_decel), 
max_speed_(max_speed) 
{}

void Plot::PlotObject::updateData(Object* object, double dt) 
{
    // Update Time
    (plotData[PlotCategories::Time].empty()) ? plotData[PlotCategories::Time].push_back(static_cast<float>(dt)) : plotData[PlotCategories::Time].push_back(plotData[PlotCategories::Time].back() + static_cast<float>(dt));
    
    // Update Velocity Lat./Long
    double lat_vel, long_vel;
    object->pos_.GetVelLatLong(lat_vel, long_vel);
    plotData[PlotCategories::LatVel].push_back(static_cast<float>(lat_vel));
    plotData[PlotCategories::LongVel].push_back(static_cast<float>(long_vel));
    
    // Update offset
    plotData[PlotCategories::LaneOffset].push_back(static_cast<float>(object->pos_.GetOffset()));

    // Update Lat./Long. Acceleration
    double lat_acc, long_acc;
    object->pos_.GetAccLatLong(lat_acc, long_acc);
    plotData[PlotCategories::LongA].push_back(static_cast<float>(long_acc));
    plotData[PlotCategories::LatA].push_back(static_cast<float>(lat_acc));

}

float Plot::PlotObject::getTimeMax() 
{
    return time_max_;
}
float Plot::PlotObject::getMaxAcc() 
{
    return max_acc_;
}
float Plot::PlotObject::getMaxDecel() 
{
   return max_decel_;
}
float Plot::PlotObject::getMaxSpeed() 
{
    return max_speed_;
}