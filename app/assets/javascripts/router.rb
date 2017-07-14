class Router
  include Molecule::Router

  def routes
    route '/', to: Layouts::Main, props: { child: Home }
  end
end