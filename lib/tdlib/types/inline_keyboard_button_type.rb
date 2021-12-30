module TD::Types
  # Describes the type of an inline keyboard button.
  class InlineKeyboardButtonType < Base
    %w[
      url
      login_url
      callback
      callback_with_password
      callback_game
      switch_inline
      buy
      user
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/inline_keyboard_button_type/#{type}"
    end
  end
end
