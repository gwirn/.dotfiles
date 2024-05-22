require("luasnip.session.snippet_collection").clear_snippets("python")
local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
	s("p", fmt("print({})", { i(0) })),
	s("inm", fmt('if __name__ == "__main__":\n\t{}', { i(0) })),
	s("fn", fmt("def {}({}):\n\t{}", { i(1, "fnname"), i(2), i(3, "pass") })),
})
