<div id="top"></div>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://rehost.in/assets/images/logo.svg">
    <img src="https://rehost.in/assets/images/logo.svg" alt="Logo" width="80" height="80">
    <img src="https://rehost.in/assets/images/AngularJS-Shield.svg" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Rehost Template: Angular</h3>
  <p align="center">
    Hot-Reload Angular Project on Cloud with Rehost CLI
    <br />
    <a href="https://docs.rehost.in/#/getting-started/quickstart"><strong>Explore the docs »</strong></a>
    <br />
    <a href="https://github.com/Rehost-Startup/template-angular/issues">Report Bug</a>
    ·
    <a href="https://github.com/Rehost-Startup/template-angular/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

The core Angular projects are no different than what's created using Angular CLI (`ng new app`). The `Dockerfile`, `docker-compose.yml` and `rehostapp.yml` files are developed to support hot-reload inside Docker containers that are running on the remote machine or the local machine.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Dependency | Remote Machine | Local Machine |
--- | --- | --- |
[Docker](https://docs.docker.com/get-docker/) | Yes | No |
[Docker-Compose](https://docs.docker.com/compose/install/) | Yes | No |
[Node.js](https://nodejs.org/en/) | No | Yes |
[Angular CLI](https://angular.io/cli) | No| Yes |
[Rehost CLI](https://docs.rehost.in/#/getting-started/installation) | Yes | Yes |

### Usage

1. Clone this repository
```
git clone https://github.com/Rehost-Startup/template-angular.git
```
2. Edit `rehostapp.yml` file:
```
version: 1

label: '<username>.personal.template-angular'
urls:
  - "<username>.personal.angular:80"
app_type: 'docker-compose'
devices:
  - "<username>.personal.vm"
```
Here, replace `<username>` with your Rehost Username.

3. On your VM instance, create a new file named `rehostmachine.yml` with the following content: 
```
version: 1

label: '<username>.personal.gcp'
memory: '2gb'
disk: '256gb'
``` 
Next, run `rh machine save` followed by `rh machine up` to connect your VM instance to Rehost.

4. Finally, run the following command on local machine to deploy the project:
```
rh app deploy
```
You can monitor the logs of build and app in Rehost Dashboard.

5. Start Hot-Reload session using:
```
rh app hot-reload
```
Edit `/src/app/app.component.html` file and save to see the changes go live instantly.
<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## More Templates

Checkout more templates at [rehost.in/templates](https://rehost.in/templates).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Connect with Rehost Community on [Discord](https://discord.gg/RnkBxDJJhQ).
