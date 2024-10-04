# github-mac-switcher

Having trouble switching github users on you're mac?
I've been using the following setup to be able to switch users, so when working on personal or work projects. I'm using the correct github user.

## Steps
- Place the contents of the [/Users/USERNAME](/Users/USERNAME) folder in you're /Users/USERNAME
- Change the user information inside the [switch-gh-user.sh](/Users/USERNAME/switch-gh-user.sh) file
- Generate SSH keys for you're accounts and place them inside the /Users/USERNAME/.ssh/ folder
- Open a new terminal window, and run `source .bashrc`