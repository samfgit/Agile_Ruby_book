require 'test_helper'

class NotifierMailerTest < ActionMailer::TestCase
  test "order_received" do
    mail = NotifierMailer.order_received (orders(:one))
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /This is just to let you know that we've received your recent order/, mail.body.encoded
  end

  test "order_shipped" do
    mail = NotifierMailer.order_shipped (orders(:one))
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /This is just to let you know that we've shipped your recent order/, mail.body.encoded
  end

end
