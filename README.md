# Survey

##### Allow users to design and take surveys, 08/25/2015

#### By Janice Laset-Parkerson

## Description

This application allows survey designers to create new surveys. The designer may add questions to the survey and update and delete questions.

## Setup

1. open a command terminal
2. `git clone https://github.com/janicelaset/survey.git`
3. `cd survey` to navigate to the project directory
4. `bundle` to install program dependencies
5. `postgres` to start postgres server
6. open a new command terminal
7. 'psql' to open postgres
8. 'rake db:migrate' to create databases
9. `ruby app.rb` to start sinatra server
10. navigate to localhost:4567 in your web browser


## Technologies Used

* Ruby language
* Sinatra web application library
* Capybara and rspec test framework
* PostgreSQL database
* Active Record and Rake

### Legal

Copyright (c) 2015 **Janice Laset-Parkerson**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
