# xkcd.tablexi


##One approach to solving http://xkcd.com/287

This program is run via the command line and includes 12 Rspec tests.
1) First execute 'bundle install' to ensure all gems, platforms and dependencies are available.
2) Run the program by accessing its path, i.e. 'bin/cli -f ../xkcd_tablexi/menu.txt'
 -- Four test menus are included: menu.txt, menu1.txt, menu2.txt, menu3.txt
 -- If necessary to change permissions, type 'chmod +x bin/cli' and re-run the program
3) Run the tests by typing 'rspec' or, if version conflicts throw erros, 'bundle exec rspec'
