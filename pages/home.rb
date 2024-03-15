# frozen_string_literal: true

# This is the landing page
# Path: /
#
class Home < Porous::Page
  metadata route: '/', title: 'Porous • Isomorphic Web Engine',
           description: 'Utility for efficiently writing applications in Ruby that run in the browser and on your server.'

  def content
    body class: 'text-slate-700 dark:text-slate-200 bg-gray-50 dark:bg-gray-900' do
      script src: 'https://cdn.tailwindcss.com'

      # Header
      component Header

      # Hero
      div id: 'hero', class: 'container mx-auto p-6 text-center text-lg my-20' do
        h2 class: 'text-5xl leading-tight font-medium text-center' do
          div 'Isomorphic Engine', class: 'font-bold bg-gradient-to-br from-cyan-400 via-emerald-500 to-yellow-600 from-15% to-85% bg-clip-text text-transparent box-decoration-clone'
          text 'for web applications'
        end
        p class: 'mt-8' do
          'A library to write pure Ruby components that are rendered on the server and hydrated in the browser.'
        end
        p class: 'mt-8' do
          text 'Only write the '
          strong 'content and logic needed for your app', class: 'drop-shadow-md text-emerald-400'
          text '. No need to maintain the external interface of the framework to keep your application running.'
        end
        p class: 'mt-8' do
          text 'And when you want it – all the '
          em 'bells and whistles'
          text ' too!'
        end
      end

      # Features
      div id: 'features', class: 'container mx-auto p-6 my-20' do
        div class: 'text-center' do
          h2 class: 'text-3xl leading-tight font-medium' do
            text 'More features, '
            span 'less code', class: 'font-bold bg-gradient-to-br from-cyan-400 via-emerald-500 to-yellow-600 from-15% to-85% bg-clip-text text-transparent box-decoration-clone'
          end
          p class: 'my-8' do
            text 'The core principle of Porous is to get functional applications written quickly by only having the developer write the parts of the application that is unique to their application.'
          end
        end

        div class: 'text-md grid gap-12 lg:grid-cols-2' do
          component Principle, icon: '🙅', heading: 'Avoid Boilerplate' do
            p 'The plumbing of the application happens in the library so updating becomes straightforward unless breaking changes affect the code you wrote. Your application consists of Plain Old Ruby Objects.', class: 'pt-6'
          end
          component Principle, icon: '😗', heading: 'Keep it Simple' do
            p 'Start with server-side rendering and turn on other features like client-side rendering as you need them.', class: 'pt-6'
          end
          component Principle, icon: '💻', heading: 'Developer Experience is Key' do
            p class: 'pt-6' do
              text 'Porous will always try to make things as easy for you as possible. Need a CSS framework? Just '
              code class: 'inline-block bg-gray-200 dark:bg-gray-700 rounded py-0.5 px-2' do
                text 'require '
                span 'porous/tailwind', class: 'text-emerald-500 dark:text-emerald-300'
              end
              text '. Need a database? Just turn it on!'
            end
          end
          component Principle, icon: '🌄', heading: 'Serves Static Files' do
            p 'Put files in the static directory and it will be served by the application. Images, fonts, vendored libraries – no problem.', class: 'pt-6'
          end
          component Principle, icon: '🔥', heading: 'Live Reload' do
            p 'The development server watches your files and notifies the browser to refresh via WebSockets, the same mechanism used for communication in production applications.', class: 'pt-6'
          end
          component Principle, icon: '📡', heading: 'Real-time Communication' do
            p 'Pages communicate with the server over a secure WebSocket connection making data streaming and real-time features easier to implement.', class: 'pt-6'
          end
        end
      end

      # Footer
      component Footer
    end
  end
end
