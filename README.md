
# LeaseWeb
Elixir Wrapper for Leaseweb infrastructure.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `leaseweb` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:leaseweb, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/leaseweb](https://hexdocs.pm/leaseweb).

## Usage
```
iex(1)> LeaseWeb.BareMetal.list
{:ok, "{\"bareMetals\":[]}"}

iex(2)> LeaseWeb.Doamin.list
{:error,
 "{\"errorCode\":2002,\"errorMessage\":\"Validating API request format failed, please check your API request.\",\"userMessage\":\"There is not any valid domain id!\"}"}
```

**TODO:**

Huge Documentation

## License
Elixir-Leasweb is Copyright © 2016 Ahamtech. It is free software, and may be redistributed under the terms specified in the LICENSE file.

## About Ahamtech

> Elixir-LeaseWeb is maintained by Ahamtech. 

We love open source software, Erlang, Elixir, and Phoenix. See our other opensource projects, or hire our Elixir Phoenix development team to design, develop, and grow your product.