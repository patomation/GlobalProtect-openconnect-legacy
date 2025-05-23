# GlobalProtect-openconnect
A GlobalProtect VPN client (GUI) for Linux based on Openconnect and built with Qt5, supports SAML auth mode, inspired by [gp-saml-gui](https://github.com/dlenski/gp-saml-gui).

<p align="center">
  <img src="https://user-images.githubusercontent.com/3297602/133869036-5c02b0d9-c2d9-4f87-8c81-e44f68cfd6ac.png">
</p>

<a href="https://paypal.me/zongkun" target="_blank"><img src="https://cdn.jsdelivr.net/gh/everdrone/coolbadge@5ea5937cabca5ecbfc45d6b30592bd81f219bc8d/badges/Paypal/Coffee/Blue/Small.png" alt="Buy me a coffee via Paypal" style="height: 32px; width: 268px;" ></a>
<a href="https://ko-fi.com/M4M75PYKZ" target="_blank"><img src="https://ko-fi.com/img/githubbutton_sm.svg" alt="Support me on Ko-fi" style="height: 32px; width: 238px;"></a>
<a href="https://www.buymeacoffee.com/yuezk" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 32px; width: 114px;" ></a>


## Features

- Similar user experience as the official client in macOS.
- Supports both SAML and non-SAML authentication modes.
- Supports automatically selecting the preferred gateway from the multiple gateways.
- Supports switching gateway from the system tray menu manually.


## Build & Install from source code

Clone this repo with:

```sh
git clone https://github.com/patomation/GlobalProtect-openconnect-legacy.git
cd GlobalProtect-openconnect-legacy
```

### Debian/MX Linux
The following instructions are for **MX-21.2.1_x64 KDE**.

```sh
sudo apt install qttools5-dev libsecret-1-dev libqt5keychain1
./scripts/install-debian.sh
```

### Ubuntu/Mint

> **⚠️ REQUIRED for Ubuntu 18.04 ⚠️**
>
> Add this [dwmw2/openconnect](https://launchpad.net/~dwmw2/+archive/ubuntu/openconnect) PPA first to install the latest openconnect.
>
> ```sh
> sudo add-apt-repository ppa:dwmw2/openconnect
> sudo apt-get update
> ```

Build and install with:

```sh
./scripts/install-ubuntu.sh
```
### openSUSE

Build and install with:

```sh
./scripts/install-opensuse.sh
```

### Fedora

Build and install with:

```sh
./scripts/install-fedora.sh
```

### Other Linux

Install the Qt5 dependencies and OpenConnect:

- QtCore
- QtWebEngine
- QtWebSockets
- QtDBus
- openconnect v8.x
- qtkeychain

...then build and install with:

```sh
./scripts/install.sh
```


### NixOS
  In `configuration.nix`:

  ```
  services.globalprotect = {
    enable = true;
    # if you need a Host Integrity Protection report
    csdWrapper = "${pkgs.openconnect}/libexec/openconnect/hipreport.sh";
  };

  environment.systemPackages = [ globalprotect-openconnect ];
  ```

## Run

Once the software is installed, you can run `gpclient` to start the UI.

## Passing the Custom Parameters to `OpenConnect` CLI

See [Configuration](https://github.com/yuezk/GlobalProtect-openconnect/wiki/Configuration)

## Display the system tray icon on Gnome 40

Install the [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/) extension and you will see the system try icon (Restart the system after the installation).

<p align="center">
  <img src="https://user-images.githubusercontent.com/3297602/130831022-b93492fd-46dd-4a8e-94a4-13b5747120b7.png" />
<p>


## Troubleshooting

Run `gpclient` in the Terminal and collect the logs.

## [License](./LICENSE)
GPLv3
