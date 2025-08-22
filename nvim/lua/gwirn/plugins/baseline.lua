return {
    {
        "gwirn/baseline",
        config = function()
            -- Default options:
            require("baseline").setup()
        end,
        event = "BufEnter"
    }
}
