# @elm-land/lamdera
> A demo of running Lamdera and Elm Land together, for Mario!

## Local development

This is running on the current build of Elm Land `v0.19.0`, which hasn't been released yet. 

To run this locally, you'll need to wait for the big release or run the next version of Elm Land locally (which is actually pretty easy if you have Node.js installed)

<details>
<summary>🛠 Here are the 6 terminal commands to do that!</summary>

```
git clone https://github.com/elm-land/elm-land.git
git checkout release/0.18.2
cd projects/cli
npm install
npm link
npm run setup
```

From there, run `elm-land -v` to see if `v0.19.0` gets printed out!
</details>


Once you have the latest Lamdera and Elm Land v0.19.0 on your local machine, you can run this project with two separate commands:

```sh
elm-land server
```

```sh
lamdera live
```

And open up the running project at `http://0.0.0.0:8000`

![A screenshot of the app running](./screenshot.png)

( __Note:__ There's no special `elm-land watch` command for now, so please excuse the extra unused dev server! )