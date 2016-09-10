defmodule ControlFlow do
  defmacro unless(expression, do: block) do
    quote do
      case unquote(expression) do
        x when x in [false, nil] ->
          unquote(block)
        _ ->
          nil
      end
    end
  end
end

# Define a macro that returns a raw AST that you've written by hand, instead of using `quote` for code generation

