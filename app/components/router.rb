class Router
  include Molecule::Router

  def routes
    route '/', to: Layouts::Main, props: { child: Home }
    route '/kullanici/olustur', to: Layouts::Main, props: { child: Users::RegisterPage }
  end
end