local function insert_makefile()
	local makefile_content = [[CC = g++
CCFLAGS = -std=c++2b -g -O3 -fsanitize=undefined -fsanitize=address -Wall -Wextra -Wpedantic -pedantic-errors -Wno-unused-variable -Wno-unused-parameter -Wfatal-errors

a.out: main.o
	$(CC) $(CCFLAGS) -o a.out main.o

main.o: main.cc
	$(CC) $(CCFLAGS) -c main.cc

clean:
	rm -rf a.out main.o
]]
	local bufnr = vim.api.nvim_get_current_buf()
	local row = vim.api.nvim_win_get_cursor(0)[1] - 1
	local lines = vim.split(makefile_content, "\n")
	vim.api.nvim_buf_set_lines(bufnr, row, row, false, lines)
end

vim.api.nvim_create_user_command("Makefile", insert_makefile, {})
