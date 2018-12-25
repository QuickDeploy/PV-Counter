# PV-Counter

Deploy the [PV-Counter](https://github.com/newnius/PV-Counter) service quickly.

## Requirements

  - `docker` install (version >= 17.03)
  - Permission to run docker commands
  - A docker swarm created and this is the **only** node, or the storage may encounter failure
  - One overlay network named `swarm-net`
  - The directory `/data` exists and able to read/write

If you haven't meet the requirements, refer to this script `install_requirements.sh` to setup that.

## Steps to deploy

#### Clone this repo

```bash
git clone https://github.com/QuickDeploy/PV-Counter.git
```

#### Start the services

```bash
bash PV-Counter/install.sh
```

#### Setup the database

visit `http://127.0.0.1/install.php` to init the system, and you will see three `Success`

#### Run on your own servers

*Part 1*

First of all, login to [QuickAuth](https://quickauth.newnius.com/) and register for an account.

After login, visit `Sites` > `Add` , and add your server ip / domain (without `http://`, `/` or `sub dir`)

Click `View`, you can see the `ClientID` and `ClientSecret`, they will be used in the *Part 2*

*Part 2*

Modify the config files `/data/pv/web/config/config.js` and `/data/pv/web/config/config.inc.php` 

Properties to be updated are `BASE_URL`, `OAUTH_CLIENT_ID`, `OAUTH_CLIENT_SECRET`, `DB_NAME`

That's all!

## Advanced users

Feel free to post issues.