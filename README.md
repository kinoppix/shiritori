Shiritori (a demonstration of Shower)
====================================================================

This is a sample application of Shower that implements realtime communication.
Shiritori doesn't have a rule of proper "shiritori" that the player are required
to comment which begins with the final charactor of the previous word.

Getting Started
---------------------------------------------------------------------

### 1. Check out
	git clone https://github.com/kinoppix/shiritori.git

### 2. Start Shower
	NODE_ENV=production node app.js &

### 2. Configure and install
	cd shiritori
	vi config/shower.yml
	bundle install
	rake db:create
	rake db:migrate
	rails r 'Message.install_shower'

### 3. Start server
	rails server &
or if you want to listen on port 80;
	rvmsudo rails server -p 80 &

### 4. Go to http://localhost/ , create rooms and comment with each other.


Known Issues
---------------------------------------------------------------------
1. Security enhancement. Everyone can edit all data for now.
2. Implement comment function that looks like niconico.

License
---------------------------------------------------------------------

The MIT License

Copyright (c) 2012 kinoppix

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.


Bundled Softwares
---------------------------------------------------------------------

### CommentView
Copyright (c) 2012 TOYOTA, Yoichi
CommentView is distributable under the MIT license. 
https://github.com/rswisteria/CommentView/
