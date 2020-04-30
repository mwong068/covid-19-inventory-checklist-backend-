# COVID-19 Inventory Checklist (Back End)

![GitHub repo size](https://img.shields.io/github/repo-size/mwong068/covid-19-inventory-checklist-backend-)
![GitHub stars](https://img.shields.io/github/stars/mwong068/covid-19-inventory-checklist-backend-)
![GitHub forks](https://img.shields.io/github/forks/mwong068/covid-19-inventory-checklist-backend-)
![Twitter Follow](https://img.shields.io/twitter/follow/mwong068?style=social)

## About

The COVID-19 Inventory Checklist app was created to help people all over the world maintain an inventory of their home items in a time when resources are more difficult to obtain. The app was designed to bring awareness to individuals with excessive amounts of items in hopes that they may donate their unused products to those in need. It was also made available so that individuals who may not have enough can use the app to see what's available in their area and reach out directly to those with excess.

This app was made as part of the Twilio and Dev.to hackathon.

### How it works

This application was built using Rails for this backend portion. Please see the below sections on how to run the application on your local environment.
Please ensure that you have downloaded the [frontend portion](https://github.com/mwong068/covid-19-inventory-checklist-frontend) of this application, to ensure full functionality of the application as it was designed.

<!--
**TODO: UML Diagram**
We can render UML diagrams using [Mermaid](https://mermaidjs.github.io/).
**TODO: Describe how it works**
-->

## Features

- Ruby on Rails web server using [Rails](https://rubyonrails.org/)
- JSON Web Token authentication using [JWT](https://github.com/jwt/ruby-jwt) gem
- Serialization using [active_model_serializers](https://github.com/rails-api/active_model_serializers) gem
- Configuration of environment variables using [dotenv](https://github.com/bkeepers/dotenv) gem
- SMS texting capability using [`twilio-ruby`](https://github.com/twilio/twilio-ruby) gem

## How to use it

1. Create a clone of this repo using [GitHub's repository cloning](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github) functionality
2. Locate the folder in your system and follow the steps below to run the server

## Set up

### Requirements

- [Ruby on Rails](https://rubyonrails.org/)
- A Twilio account - [sign up](https://www.twilio.com/try-twilio)

### Twilio Account Settings

This application should give you a ready-made starting point for keeping an inventory checklist of all of your household items. Before we begin, we need to collect
all the config values we need to run the application:

| Config&nbsp;Value | Description                                                                                                                                                  |
| :---------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Account&nbsp;Sid  | Your primary Twilio account identifier - find this [in the Console](https://www.twilio.com/console).                                                         |
| Auth&nbsp;Token   | Used to authenticate - [just like the above, you'll find this here](https://www.twilio.com/console).                                                         |
| Phone&nbsp;number | A Twilio phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164) - you can [get one here](https://www.twilio.com/console/phone-numbers/incoming) |

### Local development

After the above requirements have been met:

1. Clone this repository and `cd` into it

```bash
git clone https://github.com/mwong068/covid-19-inventory-checklist-backend-.git
cd covid-19-inventory-checklist-backend-
```

2. Install dependencies

```bash
bundle install
```

3. Set your environment variables

Follow the guide at [dotenv](https://github.com/bkeepers/dotenv) for Rails.

Create a .env file at the root of the project directory
```bash
touch .env
```

Correctly set up the .env file following the format below:
```bash
ACCOUNT_SID=yourkeyhere
AUTH_TOKEN=yourtokenhere
TWILIO_NUMBER=yournumberhere
```

See [Twilio Account Settings](#twilio-account-settings) to locate the necessary environment variables.

4. Set up the database

```bash
rails db:create
rails db:migrate
rails db:seed
```

This will be loaded with starter data so you can see an example of the application functionality.

4. Run the application

```bash
rails server
```

5. Navigate to [http://localhost:3000](http://localhost:3000)

After the server is running, you will need to start the [frontend portion](https://github.com/mwong068/covid-19-inventory-checklist-frontend) to see the full application.
                                                       

## Resources

- [Twilio's Guide to Implementation with Ruby/Rails](https://www.twilio.com/docs/sms/quickstart/ruby#install-ruby-and-the-twilio-helper-library)
- [Helpful Guide to using Twilio with Rail](https://www.twilio.com/blog/2014/02/twilio-on-rails-integrating-twilio-with-your-rails-4-app.html)
- [Sample SMS Texts using Twilio in Rails](https://www.twilio.com/docs/sms/tutorials/server-notifications-ruby-rails?code-sample=code-reading-twilio-configuration-through-environment-variables-5&code-language=Ruby&code-sdk-version=default)

## Contributing

This template is open source and welcomes contributions.

## License

[MIT](http://www.opensource.org/licenses/mit-license.html)

## Disclaimer

No warranty expressed or implied. Software is as is.