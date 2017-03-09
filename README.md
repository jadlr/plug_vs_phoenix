# PlugVsPhoenix

**Work in Progress**

This will hopefully help us in deciding if we'll use plug or phoenix for an API

run with `iex -S mix phx.server`

#### Plug

`curl -X GET http://localhost:4001/greet`

`curl -H "Content-Type: application/json" -X POST -d '{"username":"jonas","password":"secret"}' http://localhost:4001/reverse
`

#### Phoenix

`curl -X GET http://localhost:4000/greet`

`curl -H "Content-Type: application/json" -X POST -d '{"username":"jonas","password":"secret"}' http://localhost:4000/reverse
`

**Verdict:** Go with `phoenix`
