## NPM global packages issue:

You can't use globally-installed packages directly, so _link_ them:
```bash
cd myproject
npm install -g mypackage
npm link mypackage
```
