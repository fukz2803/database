## Tạo database
```sql
CREATE DATABASE movie 
```

## Tạo table phim
```sql
CREATE TABLE film (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    description TEXT,
    poster TEXT,
    length INT,
    rating VARCHAR(5),
    id_director INT,
    FOREIGN KEY (id_director) REFERENCES director(id)
    release_date DATE
)
```

## Tạo table director 
```sql
CREATE TABLE director (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    avatar TEXT,
    description TEXT
)
```

## Tạo table actor 
```sql
CREATE TABLE film (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    description TEXT,
    poster TEXT,
    length INT,
    rating VARCHAR(5),
    id_director INT,
    release_date DATE
)
```

## Tạo table nối film_actor
```sql
CREATE TABLE film (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    description TEXT,
    poster TEXT,
    length INT,
    rating VARCHAR(5),
    id_director INT,
    release_date DATE
)
```

## Tạo table category
```sql
CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
)
```
## Tạo table nối film-category
```sql
CREATE TABLE film_category(
    id_film INT,
    id_category INT,
    PRIMARY KEY (id_film,id_category),
    FOREIGN KEY (id_film) REFERENCES film(id),
    FOREIGN KEY (id_category) REFERENCES category(id)
)
```

![image](https://user-images.githubusercontent.com/50954628/154482935-0a7164c6-3608-4398-b6c9-13975e0552e4.png)