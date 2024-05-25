# Dillinger
# _*The LastMarkdown Editor, Ever*_

Dillinger is a cloud-enabled, moblie-ready, offline-storage compatible,
AngularJS-powered HTML5 Markdown editor.

  + Type some Markdown on the left
  + See HTML in the right
  + ✨ Magic ✨ 

# Features
  + Import a HTML file and watch it magically convert to Markdown
  + Drag and drop images (requires your Dropbox account be linked)
  + Import and save files from GitHub, Dropbox, Google Drive and One Drive
  + Drag and drop markdown and HTML files into Dillinger
  + Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions
that people naturally use in email.     
As [John Gruber](wikipedia.com) writes on the [Markdown site](wikipedia.com)


```python
  for i in range(10):
    print(hello)
```


>The overriding design goal for Markdown’s
>formatting syntax is to make it as readable
>as possible. The idea is that a
>Markdown-formatted document should be
>publishable as-is, as plain text, without
>looking like it’s been marked up with tags
>or formatting instructions.




This text you see here is *actually- written in Markdown! To get a feel
for Markdown’s syntax, type some text into the left window and
watch the results in the right.

# Tech
Dillinger uses a number of open source projects to work properly:

+ [AngularJS](wikipedia.com) - HTML enhanced for web apps!
+ [Ace Editor](wikipedia.com) - awesome web-based text editor
+ [markdown-it](wikipedia.com) - Markdown parser done right. Fast and easy to extend.
+ [Twitter Bootstrap](wikipedia.com) - great UI boilerplate for modern web apps
+ [node.js](wikipedia.com) - evented I/O for the backend
+ [Express](wikipedia.com) - fast node.js network app framework [@tjholowaychuk](wikipedia.com)
+ [Gulp](wikipedia.com) - the streaming build system
+ [Breakdance](wikipedia.com) - HTML

# Installation
Dillinger requires [Node.js](wikipedia.com) v10+ to run.   

Install the dependencies and devDependencies and start the server.

```sh
  cd dillinger
  npm i
  node app
```
For production environments…

```sh
  npm install --production
  NODE_ENV=production node app
```

# Plugins
Dillinger is currently extended with the following plugins.    
Instructions on how to use them in your own application are linked below.

|Plugin|README|
|:---|:---|
|DropBox|[plugins/dropbox/README.md](wikipedia.com)|
|GitHub|[plugins/github/README.md](wikipedia.com)|
|Google Drive|[plugins/googledrive/README.md](wikipedia.com)|
|OneDrive	|[plugins/onedrive/README.md](wikipedia.com)|
|Medium|[plugins/medium/README.md](wikipedia.com)|
|Google Analytics|[plugins/googleanalytics/README.md](wikipedia.com)|


# Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

First Tab:
```sh
node app
```

Second Tab:
```sh
gulp watch
```

(optional) Third:
``` sh
karma test
```

## Building for source
For production release:
```sh
gulp build --prod
```