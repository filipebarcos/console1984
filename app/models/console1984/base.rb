module Console1984
  class Base < ApplicationRecord
    self.abstract_class = true
    connects_to database: {writing: :always_write, reading: :always_write}
  end
end

ActiveSupport.run_load_hooks(:console_1984_base, Console1984::Base)
