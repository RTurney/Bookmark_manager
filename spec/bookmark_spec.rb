require_relative '../lib/bookmark'

describe Bookmark do
  describe '#bookmarks' do
    it 'contains some url bookmarks' do
      expect(subject.bookmark_list).to include("https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links")
      expect(subject.bookmark_list).to include("https://github.com/RTurney/Bookmark_manager")
      expect(subject.bookmark_list).to include("https://github.com/makersacademy/course/blob/master/bookmark_manager/walkthroughs/03.md")
    end
  end
end
