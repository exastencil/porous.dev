# frozen_string_literal: true

# Principle card displayed on the homepage
class Principle < Porous::Component
  property :icon
  property :heading

  def content
    div class: 'rounded flex flex-col gap-6 p-6 shadow-lg divide-y divide-gray-100 dark:divide-gray-700 bg-white dark:bg-slate-800' do
      h3 class: 'flex gap-6 justify-start text-xl' do
        span @icon
        span @heading
      end

      yield
    end
  end
end
