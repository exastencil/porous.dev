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
      div.hero! class: 'container mx-auto p-6 text-center text-lg my-20' do
        h2 class: 'text-5xl leading-tight font-medium text-center' do
          div class: 'font-bold bg-gradient-to-br from-cyan-400 to-yellow-600 bg-clip-text text-transparent box-decoration-clone' do
            text 'Isomorphic Engine'
          end
          text 'for web applications'
        end
        p(class: 'mt-8') {
          'A library to write pure Ruby components that are rendered on the server and hydrated in the browser.'
        }
        p class: 'mt-8' do
          text 'Only write the '
          strong(class: 'drop-shadow-md text-cyan-400') { 'content or logic needed for your app' }
          text '. No need to maintain the external interface of the framework to keep your application running.'
        end
        p class: 'mt-8' do
          text 'And when you want it – all the '
          em 'bells and whistles'
          text ' too!'
        end
      end

      # Features
      div.features! class: 'container mx-auto p-6 my-20' do
        div class: 'text-center' do
          h2 class: 'text-3xl leading-tight font-medium' do
            text 'More features, '
            span class: 'font-bold bg-gradient-to-br from-cyan-400 to-yellow-600 bg-clip-text text-transparent box-decoration-clone' do
              text 'less code'
            end
          end
          p class: 'my-8' do
            text 'The core principle of Porous is to get functional applications written quickly by only having the developer write the parts of the application that is unique to their application.'
          end
        end
        div class: 'text-md grid gap-12 lg:grid-cols-2' do
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
            div class: 'rounded flex flex-col gap-6 p-6 shadow-lg divide-y divide-gray-100 dark:divide-gray-700 bg-white dark:bg-slate-800' do
              h3 class: 'flex gap-6 justify-start text-xl' do
                heading.each { |item| span item }
              end
              p(class: 'pt-6') { description }
            end
          end
        end
      end

      # Footer
      component Footer
    end
  end
end
