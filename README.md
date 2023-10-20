<a name="readme-top"></a>
<div align="center">

  <img src=app/assets/images/logo.png width=220px>
  <h1><b>Budget App</b></h1>

</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [Tests](#tests)
  - [🎥 Video presentation](#video)
  - [🚀 Live demo](#live)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Budget App <a name="about-project"></a>

**Budget App** is a Ruby on Rails mobile web application where you can manage your budget, you have a list of transactions associated with a category, it is a way you can see how much money have you spent and on what. In order to use it you need to log in so the data maintain private.

In this project the design was taken from [this guidelines](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=), the original author is Gregoire Vella and you can find him on [Behance](https://www.behance.net/gregoirevella). I use this design according to the [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/).

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Ruby</summary>
  <ul>
    <li>
      <a href="https://www.ruby-lang.org/es/">Ruby</a>
    </li>
  </ul>
</details>

<details>
<summary>Rails</summary>
  <ul>
    <li>
      <a href="https://guides.rubyonrails.org/">Guides</a>
    </li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<details>
<summary>RSpec</summary>
  <ul>
    <li><a href="https://hackernoon.com/how-to-write-your-first-tests-using-rspec-in-rails-applications-hhfk2bqs">In Rails</a></li>
  </ul>
</details>

<details>
<summary>Devise</summary>
  <ul>
    <li><a href="https://github.com/heartcombo/devise">Devise gem</a></li>
  </ul>
</details>

<details>
<summary>Bullet</summary>
  <ul>
    <li><a href="https://github.com/flyerhzm/bullet">Bullet gem</a></li>
  </ul>
</details>

<details>
<summary>Linters</summary>
  <ul>
    <li><a href="https://github.com/microverseinc/linters-config/tree/master/ror">RoR linters</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>

- **Database based on this [ERD](app/assets/images/budgetApp.drawio.png)**

- **Models for each of the tables in the database**

- **Routes and controllers**

- **Devise gem to manage authentication**

- **Letter_opener to manage confirmation emails**

- **Bullet gem to controll and prevent n+1 problems**

- **Splash screen**

- **Home page (categories page)**

- **Sign up and log in pages**

- **Transactions page**

- **Forms to add new categories and movements"**

- **Mobile design with 2 querries for desktop version**

- **Unit and integrations tests**


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🎥 Video presentation <a name="video"></a>

[Video presentation](https://youtu.be/M99eT95NvYQ)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🚀 Live demo <a name="live"></a>

[Live demo](https://geldspar.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 💻 Getting Started <a name="getting-started"></a>

This repository includes files with Ruby lenguage.

### Prerequisites

In order to run this project you need to have install:
- Ruby check [this](https://www.ruby-lang.org/en/) to install it.
- Rails check [this](https://guides.rubyonrails.org/) to install it.
- Postgresql check [this](https://www.postgresql.org/) to install it.
- Code editor

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone https://github.com/AndreaM2429/budget_app
```

### Usage

You need to open the terminal and and navigate to the clone repository, run the commands to create the database and start the app:

```sh
  rails db:create
  rails db:migrate
  rails s
```
Navigate to http://localhost:3000 create an account and see the functional app.

To check the linters you can use the commands:

Ruby on Rails linters
```sh
  rubocop
```

Stylelintrc linters
```sh
  npx stylelint "**/*.{css,scss}"
```

To fix the linter use any of the following options: 

Ruby on Rails
```sh
  rubocop --fix
  rubocop -a
  rubocop -A
```

Stylelintrc
```sh
  npx stylelint "**/*.{css,scss}" --fix
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 👥 Author <a name="authors"></a>

👤 **Andrea Manuel**
- GitHub: [@AndreaM2429](https://github.com/AndreaM2429)
- Twitter: [@AndreaManuelOr1](https://twitter.com/AndreaManuelOr1)
- LinkedIn: [Andrea Manuel](https://www.linkedin.com/in/andreamanuel24/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 🔭 Future Features <a name="future-features"></a>

- [ ] **Make a desktop design**

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## ⭐️ Show your support <a name="support"></a>

If you like this project you could clone the repo and work with it or do the changes in a new branch. Also you could let a message with your thoughts.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for providing the necessary resources for this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>