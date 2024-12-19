require("luasnip.session.snippet_collection").clear_snippets("go")
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("go", {
	s("pf", fmt("fmt.Printf({})", { i(1) })),
	s("pl", fmt("fmt.Println({})", { i(1) })),
	s("ien", fmt("if err != nil {{\n\t{}\n}}", { i(1) })),
	s("map", fmt("{} := make(map[{}]{})", { i(1), i(2), i(3) })),
	s("slice", fmt("{} := make([]{}, {})", { i(1), i(2), i(3) })),
	s("array", fmt("{} := [{}]{}{{{}}}", { i(1), i(2), i(3), i(4) })),
	s("func", fmt("func {} ({} {}) {} {{\n\t{}\n}}", { i(1), i(2), i(3), i(4), i(5) })),
	s("for", fmt("for i := 0; i < {}; i++ {{\n\t{}\n}}", { i(1), i(2) })),
	s("forv", fmt("for ci, {} := range {} {{\n\t{}\n}}", { i(1), i(2), i(3) })),
})
