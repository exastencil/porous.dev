# frozen_string_literal: true

# The navigation header at the top of the page
#
class Header < Porous::Component
  def content
    header id: 'top', class: 'container mx-auto p-6 flex justify-between' do
      a href: '/', class: 'text-4xl font-bold tracking-wide' do
        h1 do
          text 'porous'
          sup '🧽'
        end
      end
      nav class: 'divide-x divide-gray-500/25 inline-flex items-center gap-4 text-lg font-medium' do
        ul do
          li do
            a 'Docs', href: '/documentation', class: 'hover:text-slate-600'
          end
        end
        ul class: 'pl-3' do
          li do
            a href: 'https://github.com/exastencil/porous', class: 'fill-slate-800 hover:fill-slate-600 dark:fill-white', target: '_blank',
              aria_label: 'GitHub repository' do
              component Github, size: 24
            end
          end
        end
      end
    end
  end
end
