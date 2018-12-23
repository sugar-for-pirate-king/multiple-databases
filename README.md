# README

Rails Application with multiple databases.

System Dependencies :
- Ruby 2.5.3
- Rails 5.2.2
- MySQL

## Overview
In this application, we will generate 3 databases (`database.yml`, `database_vendor_1.yml` and `database_vendor_2.yml`). In SASS Application maybe you want to make isolation data with separate database for each vendor.

This is not production project, that means this is just for experiment purpose.

## API Enpoints
Maybe in production you will be using subdomain for each vendor, but for simplify concept, i not using subdomain, but im using just body params.

<details>
  <summary><b>Show Users</b></summary>

  - **URL**

  `/api/v1/users`

  - **Method**

    `GET`

  - **URL Params**

    **Required**

    `vendor_id=[integer]`

  - **Data Params**

    None.

  - **Success Response**

    ```json
    {
      "users": [
        {
          "username": "mahou_kagami"
        },
        {
          "username": "tomewo_awasu"
        }
      ]
    }
    ```

  - **Note**

    I think that will be clean if we pass the `vendor_id` in headers. But for now, i this it's enought :p.
</details>


<details>
  <summary><b>Create New User</b> </summary>

  - **URL**

  `/api/v1/users`

  - **Method**

    `POST`

  - **URL Params**

    **Required**

    `vendor_id=[integer]`

  - **Data Params**

    ```json
    {
      "user": {
        "username": "kotoxri"
      }
    }
    ```

  - **Success Response**

    ```json
    {
      "user": {
        "username": "kotoxri"
      }
    }
    ```

  - **Notes**

    None.
</details>

## Note

Migration still doesn't work in multiple databases, so we will use traditional export dan import in mysql.

1. Export mysql with command:
   `$> mysqldump -u [username] -p [database_name] > [database_name].sql`
2. Import mysql with command:
   - `$> mysql -u root -p`
   - `$> CREATE DATABASE new_database_name`
   - `$> exit`
   - `$> mysql -u [username] -p [new_database_name] < [database_name].sql`

## License
MIT License

All Right Reserved



