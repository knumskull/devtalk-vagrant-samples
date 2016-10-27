# devtalk-vagrant-samples
Small examples of using vagrant with different provisioning methods. Every method is a seperate branch, which can be checked out.

# Examples
Every single example will install an apache webserver, which is accesible by webbrowser.



## standalone
A `centos-7.2` box with running apache.

~~~
$: git checkout standalone
$: vagrant up
~~~
- [http://localhost:8080](http://localhost:8080)

## standalone-multihost
A `centos-7.2` and `centos-6.8` box with running apache.

~~~
$: git checkout standalone-multihost
$: vagrant up
~~~

- [http://localhost:8080](http://localhost:8080)
- [http://localhost:8081](http://localhost:8081)

## ansible
A `centos-7.2` box with running apache.

~~~
$: git checkout ansible`
$: vagrant up
~~~
- [http://localhost:8080](http://localhost:8080)

## puppet
A `centos-7.2` box with running apache.

~~~
$: git checkout puppet
$: vagrant up
~~~
- [http://localhost:8080](http://localhost:8080)

## docker
Two docker container running a simple example with apache webserver and MariaDB database.

~~~
$: git checkout docker
$: vagrant up
~~~
- [http://localhost:8080](http://localhost:8080)
