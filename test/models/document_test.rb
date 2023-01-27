require "test_helper"

class DocumentTest < ActiveSupport::TestCase
  test "should not save document without title" do
  article = Document.new
  assert_not article.save, "Failure: Saved document without a title."
end
end
