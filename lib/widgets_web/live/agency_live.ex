defmodule WidgetsWeb.AgencyLive do
  use WidgetsWeb, :live_view

  import WidgetsWeb.AgencyPage.NavBar
  import WidgetsWeb.AgencyPage.Hero
  import WidgetsWeb.AgencyPage.LogoClouds
  import WidgetsWeb.AgencyPage.Services
  import WidgetsWeb.AgencyPage.Testimonial
  import WidgetsWeb.AgencyPage.Team
  import WidgetsWeb.AgencyPage.Contact

  def mount(_params, _, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div class="bg-base-200">
        <.nav_bar />
        <.hero />
        <.logo_clouds />
        <.services />
        <.testimonial />
        <.team />
        <.contact />
      </div>
    """
  end
end
