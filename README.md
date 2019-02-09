# FreeBSD port maintenance

My process for keeping ports up to date.  Its probably more complicated than it
should be, but maybe people don't share their process enough.

The development environment for me is roughly like this.  A svn checkout of the entire ports tree is maintained in a clean state and up to date.  This repository contains git revision of the ports under development.

The configuration file is at ~/.ports.yaml

### Making port updates

1. First update all ports from their svn source.

    cd <checkout_of_this_repo>
    git co devel
    ./svn.py

This will perform an svn up on all ports that exist, or an svn co on those that
do not.  Commit the changes to begin at the same point the ports tree is at.

2. Make the necessary changes.

3. Commit changes to the devel branch and push

4. Merge the changes for poudriere with portshaker.

    sudo -i bash -c portshaker -v

5. Test the port.

    sudo poudriere testport -j eleventwo -p devel -i sysutils/puppetserver6

6. Prepare to commit.

    ./prepcommit.py

This will copy the entire port directory for all ports under maintenance over top of the svn checkout of the ports.  The output of svn diff in the ports tree checkout should be only the changes that you expected to be making.

7. Do some arcanist shit.

