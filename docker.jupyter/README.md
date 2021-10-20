## README ##

### This readme file is just for creating/running Jupyter in your local environment. ###


#### You can download the images or build your owns: ####

- to build the image: go to current path and build the image:
```shell
docker build -t image_name:tag . 
```
- to use our image:
```shell
$ docker run --name custom_jupyter -i -t -p 8888:8888 -v "${PWD}:/notebooks" scadip/jupyter:centos8

## result in case you start the jupyter server properly 
## ......
## [I 09:48:52.083 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
## [I 09:48:52.306 NotebookApp] Serving notebooks from local directory: /notebooks
## [I 09:48:52.306 NotebookApp] Jupyter Notebook 6.4.3 is running at:
## [I 09:48:52.306 NotebookApp] http://f9063963cd41:8888/?token=5b78857f1165cff73883fbcaaa919a11088f8e93b5abe99c
## [I 09:48:52.306 NotebookApp]  or http://127.0.0.1:8888/?token=5b78857f1165cff73883fbcaaa919a11088f8e93b5abe99c
## [I 09:48:52.307 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
## ......
```


[For suited implementations contact us](https://www.scadip.com/contact-us/)
