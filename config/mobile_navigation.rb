# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  # Specify a custom renderer if needed.
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call.
  navigation.renderer = SimpleNavigation::Renderer::Json

  # Define the primary navigation
  navigation.items do |primary|
    primary.item :sign_in, 'Sign in', new_user_session_path, unless: -> { current_user }
    primary.item :sign_in, 'Sign out', destroy_user_session_path, link: { data: { method: :delete } }, if: -> { current_user }
  end
end
