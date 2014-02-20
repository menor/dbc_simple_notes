# P1 Sinatra Restful Crud

##Learning Competencies

* Implement CRUD in a MVC application (using Sinatra)
* Use Active Record to perform CRUD operations on a database
* Use RESTful routes

##Summary

Using Sinatra, create a simple notes application with a single notes table in
the database and all
[CRUD](http://en.wikipedia.org/wiki/Create,_read,_update_and_delete) routes and
views.

##Releases

## Skeleton

Clone the [Sinatra Skeleton](../../../sinatra-skeleton-mvc) into the current
directory with: `git clone SINATRA_SKELETON_URI`

Check reality by running `ls`, you should see:

```
README.md            sinatra-skeleton-mvc
```

`cd` into the `sinatra-skeleton-mvc` directory.

Remove the `.git` directory from `sinatra-skeleton-mvc` with `rm -rf .git/`

Add the `sinatra-skeleton-mvc` directory to the project with `git add .` then
commit with `git commit -m "Adds Sinatra Skeleton."`

###Release 0 : RESTful CRUD

Modify the skeleton code to achieve the following functionality:

1. A user Create a new note.
2. A user can Read all the notes created.
3. A user can Update a note.
4. A user can Delete an existing note.
5. Verify that a user really wants to delete a particular note.

Your note table should have a `title` and `content` field.  You should use
[RESTful routes](http://guides.rubyonrails.org/routing.html) for each
operation.


### Release 1 : Add Partials

Use Partials to display the new note entry form and the listing of all notes
on the same page.  You may feel free to implement another view for editing
a particular note.

### Release 2 : Add AJAX (optional)

Redo your application so that each CRUD route is triggered from an AJAX
request.  When necessary, return a partial to update your display.

<!-- ##Optimize Your Learning  -->

##Resources

* [Sinatra Crud Tutorial ](http://net.tutsplus.com/tutorials/ruby/singing-with-sinatra/)
* [Rendering Partials in Sinatra](http://www.sinatrarb.com/faq.html#partials)
* [RESTful routes](http://guides.rubyonrails.org/routing.html)
