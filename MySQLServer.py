import mysql.connector

# Replace with your connection details

try:
    with mysql.connector.connect(
        host="localhost",
        user="Abdelrahman",
        password="123456",
        database="alx_book_store",
    ) as connection:
        create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
        with connection.cursor() as cursor:
            cursor.execute(create_db_query)
        print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error:
    print("Failed to connect to the database!")
