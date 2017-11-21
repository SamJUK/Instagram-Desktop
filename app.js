const {app, BrowserWindow} = require('electron'),
       path = require('path');

app.once('ready', ()=> {
    window = new BrowserWindow({
        width: 1366,
        height: 768,
        backgroundColor: '#222',
         icon: path.join(__dirname, 'assets/icons/png/64x64.png')
    })
    window.loadURL(
        'https://www.instagram.com',
        {userAgent: 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25'}
    );
})