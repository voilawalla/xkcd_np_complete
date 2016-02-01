# xkcd.tablexi


##One approach to solving http://xkcd.com/287

This program is run via the command line and includes 12 Rspec tests.\n
1) First execute 'bundle install' to ensure all gems, platforms and dependencies are available.\n
2) Run the program by accessing its path, i.e. 'bin/cli -f ../xkcd_tablexi/menu.txt'\n
 -- Four test menus are included: menu.txt, menu1.txt, menu2.txt, menu3.txt\n
 -- If necessary to change permissions, type 'chmod +x bin/cli' and re-run the program\n
3) Run the tests by typing 'rspec' or, if version conflicts throw erros, 'bundle exec rspec'\n
