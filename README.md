# @elm-land/lamdera
> How to use [Lamdera](https://lamdera.com/) and [Elm Land](https://elm.land) together!

![A screenshot of the app running](./screenshot.png)

Live demo: https://elm-land.lamdera.app

## Local development

Once you have the latest Lamdera and Elm Land v0.19.0 on your local machine, you can run this project with two separate commands:

```sh
elm-land server
```

```sh
lamdera live
```

And open up the running project at `http://0.0.0.0:8000`


( __Note:__ There's no special `elm-land watch` command for now, so please excuse the extra unused dev server! )


## Deploying

Lamdera doesn't currently build `elm-land` remotely, so to deploy we'll need to commit all the gen files.

```
elm-land build
git add -f .elm-land/src
lamdera check
lamdera deploy
```
