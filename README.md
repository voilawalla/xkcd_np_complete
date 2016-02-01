


##One approach to solving http://xkcd.com/287

```
This program is run via the command line and includes 12 Rspec tests.
1) First execute 'bundle install' to ensure all gems, platforms and dependencies are available.
2) Gain access to the executable cli file by typing 'chmod +x bin/cli'
3) Run the program by accessing its path, i.e. 'bin/cli -f ../xkcd_tablexi/menu.txt'
  -- Four test menus are included: menu.txt, menu1.txt, menu2.txt, menu3.txt
 4) Run the Rspec tests by typing 'rspec' or, if version conflicts throw errors, 'bundle exec rspec' to use the Gemfile included
```
