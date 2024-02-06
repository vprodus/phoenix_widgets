defmodule WidgetsWeb.AgencyPage.LogoClouds do
  use Phoenix.Component
  def logo_clouds(assigns) do
    ~H"""
    <div class="flex w-full items-center justify-center py-10">
      <div>
        <h2 class="text-base-400 mb-12 text-center font-poppins text-lg font-semibold leading-8">
          Trusted by the world’s most Popular Brands
        </h2>
        <div class="wrap flex flex-wrap justify-center gap-10 xl:gap-32">
            <img class="w-32 grayscale" src="/images/logo/google.svg" alt="google" />
            <img class="w-32 grayscale" src="/images/logo/microsoft.svg" alt="google" />
            <img class="w-32 grayscale" src="/images/logo/spotify.svg" alt="google" />
            <img class="w-32 grayscale" src="/images/logo/netflix.svg" alt="google" />
        </div>
      </div>
    </div>
    """
  end
end
