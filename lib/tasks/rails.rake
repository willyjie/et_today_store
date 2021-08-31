# frozen_string_literal: true

namespace :db do
  # $ bundle exec rake db:annotate
  desc "Exec annotate schema comment to models"
  task annotate: :environment do |t, args|
    # refer: https://github.com/ctran/annotate_models

    `bundle exec annotate --models --exclude tests,fixtures,factories --with-comment --force`
    puts ("Annotate Done!")
  end
end
