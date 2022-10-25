from os import environ
config = {
    "user": "root",
    "password": environ["DBPass"],
    "host": "gtt-mariadb",
    "database": "gttournament"
}