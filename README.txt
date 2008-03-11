h1. Pictrails

A Web Photo Gallery, written with Rails 2.0. Pictrails can manage several photo galleries.

h2. Features

 * Create several Galleries
 * Add several pictures in a Gallery
 * Create a gallery with define a directory in same server of pictrails
 * Admin interface with login to add/edit/delete Galleries and Pictures
 * Define the thumbnails and pictures size in settings interface
 * Delete the cache page in settings interface
 * Define the number of pictures by pagination Gallery
 * Define the number of gallery by pagination of Gallery's list

h2. Requirements

Currently you need all of those things to get Pictrails to run:

 * Ruby of 1.8.6 or greater
 * Ruby On Rails 2.0.x or greater
 * A database supported by Rails ActiveRecord (MySQL, DB2, SQLite3, ...)
 * Ruby drivers for your database (obviously out of the box with Rails)
 * A gem of an image-handling API like :
    * ImageScience
    * RMagick
    * Mini-magick

h2. Installing

With the tar.gz or any other archive:

 * Extract sources to a folder
 * Create a database.yml file in the config directory. You can copy the database.yml.example
 * Create your databases: rake db:create:all
 * Migrate your database: rake db:migrate
 * Start the server in production mode : ruby script/server -e production

h2. Information about this project

Pictrails is actually consider like an Beta version, and is under development.

All contributions are welcome. 

I suck in design, I know it and I am sorry but I will really be happy if anyone could
help me.

If you want to contribute, all work is made under a git repository. You can clone the 
source with the following command :

git clone git://github.com/shingara/pictrails.git

There are another git repository with HTTP access :

git clone http://repo.or.cz/r/pictrails.git

After a clone you need update the submodule :

git submodule init
git submodule update

A redmine development platform is used at: http://dev.shingara.fr/projects/show/3

h2. License

This code is free to use under the terms of the MIT license (provided with sources).