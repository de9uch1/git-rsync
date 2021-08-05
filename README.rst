git-rsync
#########

Installation
============

Clone the repository and create the symlink in a directory where PATH is given.

.. code:: bash

   % git clone https://github.com/de9uch1/git-rsync.git
   % cd git-rsync/
   % ln -s $(pwd)/git-rsync ~/.local/bin/

If you use Bash, add a direcotry to :code:`PATH` by the following:

.. code:: bash

   % [[ ":${PATH}" != *:"$HOME/.local/bin":* ]] && echo "$HOME/.local/bin:$PATH" >> ~/.bash_profile
   % source ~/.bash_profile

Setup
=====

All configurations are set via :code:`git config`.

The remote host and path are set by :code:`rsync.remote`.

.. code:: bash

   % cd your_git_repository/
   % git config --local rsync.remote "your_server_name:/path/to/remote/repository"

If you want to sepecify the identity file or the login name, set :code:`rsync.rsh`.

.. code:: bash

   % git config --local rsync.rsh "ssh -i ~/.ssh/id_rsa -l your_login_name"

Usage
=====

It is simple to use.

.. code:: bash

   % cd your_git_repository/
   % git rsync push

It can be checked files will be transferred with :code:`-n` option.

.. code:: bash

   % git rsync -n push

Note that exclude files are set by :code:`.gitignore`.

License
=======

This software is released under the MIT License.
