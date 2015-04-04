require'qrcode'

class Booking < ActiveRecord::Base

	belongs_to :restaurant
	belongs_to :catering
	belongs_to :user


after_create :generate_qrcode


def generate_qrcode
# generates the qrcode image based on the assigned id of the object and returns its path
codepath =LibQRCode.generate_qrcode( "First Name: " + " " + self.user.fname + " Last Name:" + "" + self.user.lname + " Event Type " + "-" + self.beventtype + "" + " Restaurant Name " + "-" + self.restaurant.name, {:size => 9}) 

# save image path
self.update_attribute(:qrcode, codepath.to_s)
end

def load_qrcode
        qrcode_data = "<img src=\"data:image/png;base64," + Base64.encode64(open(self.qrcode, "rb") { |io| io.read })
        qrcode_data = qrcode_data + "\" alt=\"qrcode\">"
        return qrcode_data.html_safe
    end

end

