# Hipchat to Idobata

Bring notification in [HipChat](https://www.atlassian.com/ja/software/hipchat/overview) to [Idobata](http://idobata.io).

![Screenshot](https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-ash3/t31.0-8/1836741_10152026163460869_2025427469289033535_o.jpg)

The screenshot above is an example of bringing [Qiita:Team](https://teams.qiita.com/) notification to Idobata.

## Requirements

- Heroku / Heroku Scheduler (add-on)
- `hipchat` gem
- HipChat API Token (v2) / Room name
- Idobata API Generic Hook

## How to setup

1. Set environment variables: 
    - `HIPCHAT_API_TOKEN` for HipChat API token (v2)
	- `HIPCHAT_ROOM` for HipChat Room name
	- `IDOBATA_END` for Idobata Generic Hook token
    - Command Example: `heroku config:add HIPCHAT_API_TOKEN=hogehogefoobar"`
2. `heroku create; git push heroku master`
3. `heroku addons:add scheduler`
4. Test: `heroku run bundle exec ruby hipchat2idobata.rb`
5. Add a job to [Heroku Scheduler](https://scheduler.heroku.com/dashboard)
   ![Heroku Scheduler](https://dl.dropboxusercontent.com/u/2819285/hipchat2idobata_heroku-scheduler.png)
6. Done!

## License

(The MIT License)

Copyright &copy; 2015 [YassLab](http://yasslab.jp)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

