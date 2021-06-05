//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
//	{"",	"~/dwmblocks/src/updates.sh",	0,	8},
	{"", 	"~/dwmblocks/src/volume.sh",	0,	10},
	{"", 	"~/dwmblocks/src/cpu.sh",		5,	3},
	{"",	"~/dwmblocks/src/ram.sh",		5,	0},
	{"",	"~/dwmblocks/src/clock.sh",		60,	0},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = "   |    ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
