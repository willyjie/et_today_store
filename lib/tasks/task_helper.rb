# frozen_string_literal: true

module Tasks::TaskHelper
  def colorize(text, color_code)
    # < Color Code >
    # black: 30, red: 31, green: 32, yellow: 33,
    # blue: 34, magenta: 35, cyan: 36, white: 37,
    "\033[#{color_code}m#{text}\033[0m"
  end

  def cyan(text); colorize(text, 36);end # convention is used to `task runtime msg`
  def green(text); colorize(text, 32);end # convention is used to `database record related`
  def red(text); colorize(text, 31);end # no convention
  def yellow(text); colorize(text, 33);end # no convention
  def blue(text); colorize(text, 34);end # no convention
end
