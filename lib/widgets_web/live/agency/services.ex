defmodule WidgetsWeb.AgencyPage.Services do
  use Phoenix.Component
  @services  [
    %{
      name: "Digital Marketing",
      bg: "https://images.unsplash.com/photo-1557426272-fc759fdf7a8d?q=100&w=800&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    %{
      name: "Website Development",
      bg: "https://images.pexels.com/photos/1181467/pexels-photo-1181467.jpeg?auto=compress&cs=tinysrgb&w=800",
    },
    %{
      name: "Social Media Management",
      bg: "https://images.pexels.com/photos/533446/pexels-photo-533446.jpeg?auto=compress&cs=tinysrgb&w=800",
    },
    %{
      name: "App Development",
      bg: "https://images.pexels.com/photos/1181244/pexels-photo-1181244.jpeg?auto=compress&cs=tinysrgb&w=800",
    },
    %{
      name: "Video Editing",
      bg: "https://images.pexels.com/photos/3379934/pexels-photo-3379934.jpeg?auto=compress&cs=tinysrgb&w=800",
    },
    %{
      name: "Consulting",
      bg: "https://images.unsplash.com/photo-1552960504-34e1e1be3f53?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    }
  ]

  def services_data(), do: @services

  def services(assigns) do
    ~H"""
      <div id="services" class="mt-10 flex flex-col items-center justify-center md:mt-20">
        <div class="flex flex-col items-center justify-center">
          <h1 class="text-center font-poppins text-2xl font-semibold md:text-5xl">
            Our Services
          </h1>
          <span class="text-md mt-2 px-2 text-center font-poppins md:mt-4 md:px-5 md:text-xl">
            Uncover new paths, explore opportunities and chart your success with us.
          </span>
        </div>
        <div class="container mt-10 grid gap-10 p-4 md:grid-cols-2 xl:grid-cols-3">
        <div
            :for={item <- services_data()}
            class="card image-full bg-base-100 shadow-xl transition duration-300 hover:-translate-y-1">
            <figure class="object-cover">
              <img src={item.bg} alt={item.name} />
            </figure>
            <div class="card-body">
              <h2 class="card-title mt-auto font-poppins text-4xl font-semibold contrast-200">
                <%= item.name %>
              </h2>
            </div>
          </div>
        </div>
      </div>
    """
  end
end
