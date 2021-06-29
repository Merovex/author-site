module ApplicationHelper
  def button_css(color = 'blue')
    "bg-#{color}-500 text-white px-4 py-2 rounded font-medium mx-3 hover:bg-#{color}-600 transition duration-200 each-in-out"
  end
  def headline(title, wrap_title = true)
    content_for(:title, title)
    css_class = %w[
      font-display title text-3xl md:text-5xl text-black dark:text-white mt-4 mb-8
    ].join(' ')
    content = tag.h1(title, class: css_class)

    return content unless wrap_title

    tag.section(content, class: 'section')
  end
  def h2(text, klass='')
    css_class = %w[
      font-display title text-2xl md:text-3xl text-black dark:text-white
    ].join(' ')
    content = tag.h2(text, class: "#{css_class} #{klass}")
  end
end
