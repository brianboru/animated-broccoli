defmodule ApiExample.QuotesController do
    use ApiExample.Web, :controller

    def index(conn, _params) do
               
        quotes = %{
            id: UUID.uuid1(),
            quotes: [
                %{ 
                    amount: %{ currency: "GBP:", value: 123.45},
                    terms: %{ rate: 0.1234, markup: 3.0, margin: 3.02}
                },
                %{ 
                    amount: %{ currency: "EUR:", value: 50.45},
                    terms: %{ rate: 0.164, markup: 3.0, margin: 5.02}
                },
                %{ 
                    amount: %{ currency: "USD:", value: 170.45},
                    terms: %{ rate: 0.163, markup: 3.0, margin: 7.02}
                }
        ]}
        json conn, quotes
    end
end