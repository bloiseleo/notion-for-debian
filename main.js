const {app, BrowserWindow} = require("electron");

const createWindow = () => {
    return new BrowserWindow({
        width: 800,
        height: 600,
        icon: './assets/notion.ico',
        autoHideMenuBar: true
    });
}

app.whenReady()
.then(() => {
    const window = createWindow();
    window.loadURL('https://www.notion.so');
})
