require 'test_helper'

class CategoryMailerTest < ActionMailer::TestCase
  test "publication" do
    mail = CategoryMailer.publication
    assert_equal "Publication", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
