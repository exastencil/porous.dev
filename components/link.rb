class Link
  include Porous::Component

  def render
    a href: props[:href], class: 'font-bold text-cyan-400 hover:text-yellow-500' do
      props[:text]
    end
  end
end
