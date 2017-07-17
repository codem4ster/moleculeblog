class Router
  include Molecule::Router

  def routes
    route '/', to: Layouts::Main, props: { child: Home }
    route '/users/create', to: Layouts::Main, props: { child: Users::Create }
  end
end