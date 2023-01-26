require "test_helper"

class DocumentTest < ActiveSupport::TestCase
  test "should not save document without title" do
  article = Document.new
  assert_not article.save, "Saved document without a Folder."
end
end
