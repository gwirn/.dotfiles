require("luasnip.session.snippet_collection").clear_snippets("go")
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
	s("pf", fmt("fmt.Printf({})", { i(0) })),
	s("pl", fmt("fmt.Println({})", { i(0) })),
	s("ien", fmt("if err != nil {{\n\t{}\n}}", { i(0) })),
})
