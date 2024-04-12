import os
from dotenv import load_dotenv
import mysql.connector
from mysql.connector import Error

def rename_column():
    try:
        # Load environment variables from .env file
        load_dotenv()

        # Get database connection details from environment variables
        DB_HOST = os.getenv("DB_HOST")
        DB_PORT = os.getenv("DB_PORT")
        DB_DATABASE = os.getenv("DB_DATABASE")
        DB_USER = os.getenv("DB_USER")
        DB_PASSWORD = os.getenv("DB_PASSWORD")

        # Connect to MySQL database
        db_connection = mysql.connector.connect(
            host=DB_HOST,
            port=DB_PORT,
            database=DB_DATABASE,
            user=DB_USER,
            password=DB_PASSWORD,
            charset='utf8'
        )

        if db_connection.is_connected():
            cursor = db_connection.cursor()

            # SQL command to rename column
            sql_query = "ALTER TABLE properties CHANGE COLUMN location location_extract VARCHAR(255)"

            # Execute the SQL command
            cursor.execute(sql_query)
            db_connection.commit()
            print("Column renamed successfully.")

    except Error as e:
        print(f"Error: {e}")

    finally:
        # Close the database connection
        if db_connection.is_connected():
            cursor.close()
            db_connection.close()
            print("Database connection closed.")

# Call the function to rename the column
rename_column()
