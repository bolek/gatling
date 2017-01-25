defmodule Gatling.TestHelpers do
  import ExUnit.Assertions, only: [assert: 2, refute: 2]

  def assert_exists(path) do
    assert File.exists?(path), "Path does not exist: #{path}"
  end

  def refute_exists(path) do
    refute File.exists?(path), "Path exist: #{path}"
  end
end

Code.compiler_options(ignore_module_conflict: true)
ExUnit.start(timeout: 60_000 * 10)
