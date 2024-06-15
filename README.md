<p align="center">
<img src="assets/notion.png">

<h1 align="center">Notion for Debian</h1>
</p>


Just another unofficial client for Notion that uses Electron to emulate a real desktop application while accessing its content from the [notion.so](https://notion.so) url. 

## Install

To install, you can download it from the [releases page](https://github.com/bloiseleo/notion-for-debian/releases). Every release has a debian package that can be installed with:

```
sudo apt-get install ./notion-for-debian_1.0.0_amd64|arm64.deb
```

The packages are built to x64 and arm64 architectures. If you need it to be built in another architecture, you will need to build in your own machine.

## Building

In order to build your executable in your own architecture, you must clone this repository. Besides, you will need to install node.js version `20.14.0` and npm `10.7.0`.

After doing it, enter the directory and run `npm install`. This will install all the dependencies needed. After that, you should run `fix_sandbox_bug.sh`. This will prevent a bug from electron chrome to pop up in your terminal. If you want to check that everythin works, you can run `npm start` to run it in development mode.

Now, you can build your package. To do this, you will use `electron-forge` that comes with the node_modules. Every architecture has its own details that need to be take in consideration before build this project. So, I recommend you to take a look at [CLI | Electron Forge](https://www.electronforge.io/cli#make) documentation. 

The command itself is very simple:

```
npx electron-forge make --targets @electron-forge/maker-deb --arch x64
```

You will need to change the --arch to the desired architecture. 

If you want deeper changes, I really recommend you to read the [Electron Forge](https://www.electronforge.io/) documentation.