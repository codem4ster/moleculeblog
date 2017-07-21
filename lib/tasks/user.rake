namespace :user do
  desc 'Generates an initial admin user'
  task generate_admin: :environment do
    role_names = %i[admin member]
    role_names.each { |role_name| Role.find_or_create_by(title: role_name) }
    admin_role = Role.where(title: :admin).first
    User.create_with(password: '123456')
        .find_or_create_by(username: :admin, role: admin_role,
                           email: 'admin@user.com')
  end

end