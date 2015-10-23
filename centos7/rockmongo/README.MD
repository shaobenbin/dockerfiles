## how to use it

#### 1.build this

```

docker build -t '[youname]/rockmongo'

```

### 2. run as images

#### run with docker mongo

```

1. docker run -d --name mongodb -p 27017:27017  mongo

2. docker run -d --link mongodb/mongodb -p 80:80 [youname]/rockmongo

```

#### run single

```

1. docker run -d -v $host:/var/www/html -p 80:80 [youname]/rockmongo

2. now you can modify $host/config.php（setting mongo host and port in this file）

```

#### enjoy
http://youdomain:80 in you browser