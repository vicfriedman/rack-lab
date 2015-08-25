
## Rack Lab

Now that we've worked a bit with rack and middleware, it's your turn to create a spiffy Rack app! It's a very simple, totally contrived app, but the end result will use everything you've learned thus far in terms of Rack and middleware, as well as put your ERB rendering skills to the test.

1. Whenever you run `rspec`, you'll want to make sure you are in this directory.
2. Your main Rack `Application` is going to live in `app/application.rb`.
3. All of your middleware will live in the `app/controllers` directory. You'll want to create a separate `.rb` file for each piece of middleware.
4. When the time comes, add your ERB template in `lib/templates`.
5. Take it slow. This is going to be a bit tricky. The specs will run in an order that makes sense, but you will need to jump around a bit. It's very likely that you'll make a test pass, and then need to go back and make it re-pass after you've added code to make later tests pass.
6. When it comes to running the last specs (in `spec/05_app_spec.rb`), you'll get some weird error that may not make too much sense. At this point, you'll need to start editing your `config.ru` file.
7. The very last test may seem tricky, but if you think about it and play around in pry, you can figure out how you might get it to pass. There are multiple ways to get this to pass. You could add another piece of middleware if you like (which is a great way to do it), but it's totally acceptable to add a few lines of code to one of the pieces of middleware you already have.

### Tips

1. I'd recommend starting each piece of middleware as simply as possible. Make it barely pass the spec. Come back later and make them interact with one another as need be.
2. Don't jump right into trying to write the whole stack of middleware. Take it one spec at a time. Fail-fast is turned on for a reason.
3. For the last spec, take your time. You won't need to change much code at all! You'll want to have a poke around the `env` variable that gets passed between pieces of middleware.