require 'formula'

class Apgdiff < Formula
  homepage 'http://apgdiff.startnet.biz/index.php'
  url 'http://apgdiff.startnet.biz/download/apgdiff-2.4-bin.zip'
  mirror 'http://downloads.sourceforge.net/project/apgdiff/apgdiff/apgdiff-2.4/apgdiff-2.4-bin.zip'
  sha1 '1150d44e9da2c1417767d4106bdb297ed0adfed8'

  def install
    libexec.install "apgdiff-#{version}.jar"
    (bin+'apgdiff').write <<-EOS.undent
      #!/bin/bash
      java -jar "#{libexec}/apgdiff-#{version}.jar" "$@"
    EOS
  end
end
