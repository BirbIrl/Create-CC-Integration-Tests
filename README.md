This is a minimal minecraft world filled with tests for [this fork](https://github.com/BirbIrl/Create) of [Create](https://github.com/Creators-of-Create/Create) - used in the making of [this pr](https://github.com/Creators-of-Create/Create/pull/7883).

![tests](https://github.com/user-attachments/assets/70465a92-acad-4b05-8984-466b56e3e65c)


### Setting up
1. Create a minecraft 1.20.1 forge instance with:
    - [a compatible fork of create](https://github.com/BirbIrl/Create)
    - [cc:tweaked 1.115.1](https://modrinth.com/mod/cc-tweaked/version/1.115.1) 

2. use `git clone https://github.com/BirbIrl/Create-CC-Integration-Tests` in the .minecraft/saves/ directory

3. open the game, load up the world.

4. the world should teleport you in front of the yellow computer, use it and run the `test` command to start the tests

### Contributing
- Try not to edit anything outside of `computercraft`, `region` or `level.dat`.
- Before submitting a PR make sure the world works properly without any of the files listed in the .gitignore until the `#script-break` line. You can delete the files automatically using `delete-everything-in-.gitignore.sh`.
