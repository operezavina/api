class CodesController < ApplicationController
  def show
    @qr_code = RQRCode::QRCode.new("")
  end
end
