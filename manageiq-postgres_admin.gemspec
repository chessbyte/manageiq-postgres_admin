# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manageiq/postgres_admin/version'

Gem::Specification.new do |spec|
  spec.name          = "manageiq-postgres_admin"
  spec.version       = ManageIQ::PostgresAdmin::VERSION
  spec.authors       = ["ManageIQ Developers"]

  spec.summary       = "ManageIQ Postgres Admin"
  spec.description   = "ManageIQ Postgres Admin"
  spec.homepage      = "https://github.com/ManageIQ/manageiq-postgres_admin"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "awesome_spawn",           "~> 1.4"
  spec.add_runtime_dependency "linux_admin",             "~> 1.0"
  spec.add_runtime_dependency "pg"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "simplecov"
end
