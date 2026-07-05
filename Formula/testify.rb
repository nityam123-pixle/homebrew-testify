class Testify < Formula
  desc "Zero-config API testing for your terminal"
  homepage "https://github.com/nityam123-pixle/testify-cli"
  version "1.2.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nityam123-pixle/testify-cli/releases/download/v1.2.8/testify_darwin_arm64.tar.gz"
      sha256 "0faf7c90844d709be7556868ff169a13ac756df11caf83315387b790c763b078"
    end
    on_intel do
      url "https://github.com/nityam123-pixle/testify-cli/releases/download/v1.2.8/testify_darwin_amd64.tar.gz"
      sha256 "4c646b37852e5e6debe398054f4311c38e24e8f9612d35b14fe61dc5733a999e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nityam123-pixle/testify-cli/releases/download/v1.2.8/testify_linux_arm64.tar.gz"
      sha256 "d2b77303b22472384ec553b244b02638cd30b2dbbbf037a0d90f89d6600fcc0b"
    end
    on_intel do
      url "https://github.com/nityam123-pixle/testify-cli/releases/download/v1.2.8/testify_linux_amd64.tar.gz"
      sha256 "be82caa57dcca31d5e2c5ba79c46e4f4993ae50f02a541a8141bb5d541cea5bc"
    end
  end

  def install
    bin.install "testify"
  end

  test do
    system "#{bin}/testify", "version"
  end
end
