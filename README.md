<h1 align="center">
  <br>
  <a href="https://www.youtube.com/watch?v=VA770wpLX-Q"><img src="https://images.squarespace-cdn.com/content/v1/5a61cfb464b05ff24f4f982f/1516448620538-LCWC8LKTYRNVDJKFSA1D/ke17ZwdGBToddI8pDm48kBvBWPaQVXK0bu07l4aO6rZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmAjrfiFKgocEbO-IxqvFXpPwTl4nX-pGHema44ALmtv3K3_7PEk9T3_w2Q0xmtcsp/Eye+Doctor.png?format=1000w" alt="Docto THP" width="200"></a>
  <br>
  Docto THP
  <br>
</h1>

**Docto THP** is our second **Ruby on Rails** DB work running with **Active Records**. The idea is to match doctors & patients living in the same cities in order to organize appointments :

* **One patient** can have **multiple doctors**.
* **One doctors** can have **multiple patients**.
* **One city** can have **multiple patients, doctors and, of course, multiple appointments**.

## How To Use

To clone and run this application, you'll need [Ruby 2.5.1](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-5-1-released/) and [Rails 5.2.4.3](https://rubygems.org/gems/rails/versions/5.2.4.3) installed on your computer. Then, run theses on your command line:

```bash
# Clone this repository
$ git clone https://github.com/ThibaultClerc/Freedoc-final.git

# Go into the main repository and install dependencies
$ bundle install

# Initiate migrations
$ rails db:migrate

# Initiate seeds
$ rails db:seed

# Finally, run Rails Console and have fun
$ rails console
```
