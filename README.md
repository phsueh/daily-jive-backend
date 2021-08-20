# Daily Jive Backend
This repo is the Sinatra backend for the app Daily Jive. See frontend features [here](https://github.com/phsueh/daily-jive-frontend).

## Installation and Setup

Clone down this Sinatra repository.

To install the necessary gems, run `bundle install` in the directory you stored the cloned repository. 

**Start your server with:**

```sh
shotgun
```

> **Note:** This will run your server on port
> [http://localhost:9393](http://localhost:9393).
> [shotgun](https://github.com/rtomayko/shotgun) is a ruby gem that will
> automatically reload your Sinatra server. You may still need to refresh your
> browser to see changes.

<!-- Your backend and your frontend should be in two different repositories. Create a
new repository in a separate folder with a React app for your frontend using
[create-react-app][].

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9393/test")
  .then((res) => res.json())
  .then(console.log);
```

[create-react-app]: https://create-react-app.dev/docs/getting-started -->