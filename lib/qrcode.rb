#require 'action_controller'
require 'rqrcode'
require 'rqrcode-rails3/size_calculator.rb'
require 'rqrcode-rails3/renderers/svg.rb'

class LibQRCode

  def self.generate_qrcode(text, options)
    size = options[:size]
    level = options[:level] || :h

    qrcode = RQRCode::QRCode.new(text, :size => size, :level => level)
    img = qrcode.to_img
    #svg = RQRCode::Renderers::SVG::render(qrcode, options)
    #
    filename = SecureRandom.hex(12)+'.png' # generates random unique name for the image file
    #directory = Rails.root.join("qrcodes")
    img = img.resize(90, 90).save(Rails.root + "public/qrcodes/" + filename)
    #file = File.open(Rails.root+ 'app/public/qrcodes' +filename)
    ##do |f|
    ##  f.puts svg
    ##end
    File.open(img.path)
    return Rails.root + "public/qrcodes/" + filename
  end
end