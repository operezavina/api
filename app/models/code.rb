class Code < ApplicationRecord
  def generate_qr
    self.code = SecureRandom.hex
    save
  end
end
