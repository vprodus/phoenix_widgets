defmodule WidgetsWeb.AgencyPage.NavBar do
  use Phoenix.Component

  @navigation [
    %{ name: "Home", href: "#home" },
    %{ name: "Services", href: "#services" },
    %{ name: "Testimonial", href: "#testimonial" },
    %{ name: "Team", href: "#team" },
    %{ name: "Contact Us", href: "#contactus" }
  ]

  def navigation(), do: @navigation

  attr :active, :string, default: "Home"

  def nav_bar(assigns) do
    ~H"""
    <div class="sticky top-0 z-50 flex justify-center py-4">
      <div class="navbar max-w-xs rounded-full bg-base-100/90 py-0 shadow-2xl outline outline-base-content/5 backdrop-blur md:max-w-4xl">
        <div class="navbar-start">
          <div class="dropdown">
            <div tabIndex={0} role="button" class="btn btn-circle btn-ghost lg:hidden">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                class="h-5 w-5"
                fill="none"
                viewBox="0 0 24 24"
                stroke="currentColor">
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  strokeWidth="2"
                  d="M4 6h16M4 12h8m-8 6h16"
                />
              </svg>
            </div>
            <ul class="menu dropdown-content menu-md z-[1] mt-3 w-52 gap-2 rounded-box bg-base-100 p-2 shadow">
              <li :for={item <- navigation() }>
                <a key={item.name} href={item.href} class="font-poppins">
                  <%= item.name %>
                </a>
              </li>
            </ul>
          </div>
          <a href="/" class="btn btn-ghost rounded-full font-poppins text-lg font-semibold">
            Digital Agency
          </a>
        </div>
        <div class="navbar-center ml-10 hidden lg:flex">
            <nav :for={item <- navigation()} class="menu menu-horizontal px-1">
              <a
                key={item.name}
                href={item.href}
                class={"btn btn-ghost rounded-full font-poppins text-sm font-light #{
                  if @active == item.name, do: "bg-base-300"}"}>
                <%= item.name %>
              </a>
            </nav>
        </div>

        <div class="navbar-end h-10 scale-75">
          <%!-- <Toggle /> --%>
        </div>
      </div>
    </div>
    """
  end
end
