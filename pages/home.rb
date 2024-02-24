# frozen_string_literal: true

class Home
  include Porous::Page
  include Porous::Component

  def route = '/'
  def page_title = 'Porous • Isomorphic Web Engine'
  def page_description = 'Utility for efficiently writing applications in Ruby that run in the browser and on your server.'

  def render
    div class: 'text-slate-700 dark:text-slate-200' do
      # Header
      component Header

      # Hero
      div.container.mx_auto.p_6.text_center.text_lg.my_20.hero! do
        h2.text_5xl.leading_tight.font_medium.text_center do
          div class: 'font-bold bg-gradient-to-br from-cyan-400 to-yellow-600 bg-clip-text text-transparent box-decoration-clone' do
            text 'Isomorphic Engine'
          end
          text 'for web applications'
        end
        p.mt_8 'A library to write pure Ruby components that are rendered on the server and hydrated in the browser.'
        p.mt_8 do
          text 'Only write the '
          strong.drop_shadow_md.text_cyan_400 'content or logic needed for your app'
          text '. No need to maintain the external interface of the framework to keep your application running.'
        end
        p.mt_8 do
          text 'And when you want it – all the '
          em 'bells and whistles'
          text ' too!'
        end
      end

      # Features
      div.container.mx_auto.p_6.my_20.features! do
        div.text_center do
          h2.text_3xl.leading_tight.font_medium do
            text 'More features, '
            span.font_bold.bg_gradient_to_br.from_cyan_400.to_yellow_600.bg_clip_text.text_transparent.box_decoration_clone do
              text 'less code'
            end
          end
          p.my_8 do
            text 'The core principle of Porous is to get functional applications written quickly by only having the developer write the parts of the application that is unique to their application.'
          end
        end
        div.text_md.grid.gap_12 class: 'lg:grid-cols-2' do
          {
            ['🙅',
             'No Bundled Runtime'] => 'The plumbing of the application happens in the library so updating becomes straightforward unless breaking changes affect the code you wrote. Your application consists of Plain Old Ruby Objects.',
            ['🖥',
             '️Server-Side Rendering'] => 'The web server loads and renders components on requests. Good for initial page loads, great for SEO!',
            ['💻',
             'Client-Side Rendering'] => 'Once the page is loaded, component code is fetched and used to hydrate the page with interactive elements – including routing. Subsequent navigation doesnʼt need to request pages from the web server.',
            ['🌄',
             'Serves Static Files'] => 'Put files in the static directory and it will be served by the application. Images, fonts, vendored libraries – no problem.',
            ['🔥',
             'Live Reload'] => 'The development server watches your files and notifies the browser to refresh via WebSockets, the same mechanism used for communication in production applications.',
            ['📡',
             'Real-time Communication'] => 'Pages communicate with the server over a secure WebSocket connection making data streaming and real-time features easier to implement.',
          }.each do |heading, description|
            div.rounded.flex.flex_col.gap_6.p_6.shadow_lg.divide_y class: 'divide-gray-100 dark:divide-gray-700 bg-white dark:bg-slate-800' do
              h3.flex.gap_6.justify_start.text_xl do
                heading.each { |item| span item }
              end
              p.pt_6 description
            end
          end
        end
      end

      # Footer
      component Footer
    end
  end
end
