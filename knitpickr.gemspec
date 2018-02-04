
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "knitpickr/version"

Gem::Specification.new do |spec|
  spec.name          = "knitpickr"
  spec.version       = Knitpickr::VERSION
  spec.authors       = ["'Sara Stanton'"]
  spec.email         = ["'sara.mpa13@gmail.com'"]

  spec.summary       = %q{Browse a list of Knitpicks yarn by weight, fiber, name, or sale price.}
  spec.description   = %q{Scrape details (such as yarn weight, fiber content, name, and price) from the Knitpicks website (www.knitpicks.com). Users can browse a list of yarn by weight, fiber, name, or sale price.}
  spec.homepage      = "https://github.com/sarastanton/knitpickr-cli-app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.version       = Knitpickr::VERSION
  spec.name          = "knitpickr-cli-app"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end