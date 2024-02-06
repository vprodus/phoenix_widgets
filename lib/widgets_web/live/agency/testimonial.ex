defmodule WidgetsWeb.AgencyPage.Testimonial do
  use Phoenix.Component

  @testimonials [
    %{
      name: "Peter",
      position: "Lead Developer",
      quote:
        "I really like this marketing agency. They are very professional and know how to get the job done. I would recommend them to anyone.",
      image:
        "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
    },
    %{
      name: "David",
      position: "Marketing Manager",
      quote:
        "Wonderful team, great service and always available to answer any queries. I always recommend them to my friends.",
      image:
        "https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
    },
    %{
      name: "Marc",
      position: "Human Resources",
      quote: "The best way to market your business. Impressive results.",
      image:
        "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
    },
    %{
      name: "Lisa",
      position: "Accounting Manager",
      quote:
        "First I was not sure about them but now I am a fan. My website is ranking on top of google.",
      image:
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
    }
  ]

  def testimonials(), do: @testimonials

  def testimonial(assigns) do
    ~H"""
      <div id="testimonial" class="my-20 flex flex-col items-center justify-center md:my-32">
        <div class="flex flex-col items-center justify-center">
          <h1 class="text-center font-poppins text-2xl font-semibold md:text-5xl">
            Testimonials
          </h1>
          <span class="text-md mt-2 px-2 font-poppins md:mt-4 md:px-5 md:text-xl">
            What Our Clients Says About Us
          </span>
        </div>
        <div class="py-10">
          <div id="leftmenu" class="container mx-4 h-96 rounded-xl max-sm:max-w-sm">
            <%!-- <.svelte  name="Testimonial" props={%{testimonial: testimonials()}}/> --%>
            <div class="carousel container mx-4 h-96 rounded-xl max-sm:max-w-sm">
              <div :for={{item, index} <- Enum.with_index(testimonials())} id={"slide#{index}"} class="carousel-item h-full bg-base-100">
                <div class="flex h-full items-center justify-center">
                  <figure class="mx-10 mt-10">
                    <blockquote class="text-center font-poppins font-semibold leading-8 text-base-content lg:text-2xl">
                      <p>“<%= item.quote %>”</p>
                    </blockquote>
                      <div class="mt-10 flex flex-col items-center">
                        <img
                          class="mx-auto h-14 w-14 rounded-full"
                          src={item.image}
                          alt={item.name}
                        />
                        <div class="mt-4 flex justify-center gap-2 lg:tracking-widest">
                          <div><%= item.name %></div>
                            <div class="text-base-content/50"><%= item.position %></div>
                          </div>
                        </div>
                  </figure>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    """
  end
end
