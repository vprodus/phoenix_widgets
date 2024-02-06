defmodule WidgetsWeb.AgencyPage.Hero do
  use Phoenix.Component

  def hero(assigns) do
    ~H"""
      <div id="home" class="hero py-10 flex justify-center">
        <div class="hero-content flex-col lg:flex-row-reverse">
          <img
            src="https://images.unsplash.com/photo-1552960562-daf630e9278b?q=100&w=900"
            alt=""
            class="max-w-xs rounded-b-box rounded-t-[14rem] shadow-2xl outline outline-base-content/5 md:max-w-md"
          />
          <div class="text-center lg:text-start">
            <span class="badge badge-outline badge-lg">Award winning digital agency</span>
            <h1 class="font-poppins text-3xl font-black uppercase md:text-7xl">
              Digital marketing solutions
              <span class="text-base-content/30"> for ambitious brands</span>
            </h1>
            <p class="py-6 font-poppins lg:max-w-lg">
              SuperCharge Your Brand Performance With Performance Based and Specialized Digital
              Marketing & Development Solutions.
            </p>
            <div class="flex gap-2 max-lg:justify-center">
              <a
                href="#contactus"
                class="btn btn-neutral md:btn-lg rounded-full font-poppins shadow-md">
                Get Started
              </a>
              <a href="/" class="btn btn-ghost md:btn-lg rounded-full font-poppins font-light">
                Read success stories
              </a>
            </div>
          </div>
        </div>
      </div>
    """
  end
end
