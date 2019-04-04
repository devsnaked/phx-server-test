defmodule MyAppWeb.AppController do
	use MyAppWeb, :controller

	def index(conn, _params) do
		json(conn, %{list: Greeter.createList(1500)}) 
	end

end

defmodule Greeter do
    def createList(i) do
        list = Enum.to_list(1..i)
        Enum.map(list, &(&1 * Enum.random(1..100)))
    end
end