class FileOpener
  require 'open-uri'
  def call(path)
    open(path)
  end
end