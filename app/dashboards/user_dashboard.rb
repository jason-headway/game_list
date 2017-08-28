require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    games: Field::HasMany,
    id: Field::Number,
    authentication_token: Field::String,
    created_at: Field::DateTime,
    current_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String.with_options(searchable: false),
    email: Field::String,
    encrypted_password: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    last_sign_in_at: Field::DateTime,
    last_sign_in_ip: Field::String.with_options(searchable: false),
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    roles_mask: Field::Number,
    sign_in_count: Field::Number,
    updated_at: Field::DateTime,
    uuid: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :games,
    :id,
    :authentication_token,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :games,
    :id,
    :authentication_token,
    :created_at,
    :current_sign_in_at,
    :current_sign_in_ip,
    :email,
    :encrypted_password,
    :first_name,
    :last_name,
    :last_sign_in_at,
    :last_sign_in_ip,
    :remember_created_at,
    :reset_password_sent_at,
    :reset_password_token,
    :roles_mask,
    :sign_in_count,
    :updated_at,
    :uuid,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :games,
    :authentication_token,
    :current_sign_in_at,
    :current_sign_in_ip,
    :email,
    :encrypted_password,
    :first_name,
    :last_name,
    :last_sign_in_at,
    :last_sign_in_ip,
    :remember_created_at,
    :reset_password_sent_at,
    :reset_password_token,
    :roles_mask,
    :sign_in_count,
    :uuid,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
