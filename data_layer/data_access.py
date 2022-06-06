import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="realinstaldb",
    user="postgres",
    password="postgres")


def get_categories():
    """
    Retrieves all the categories
    :return: List of tuples with categories
    """
    with conn:
        query = 'select id, name from category;'
        c = conn.cursor()
        c.execute(query)
        records = c.fetchall()
        c.close()
    return records


def get_all_products():
    """
    Retrieves all the products with id, name, description and price
    :return: List of tuples with products
    """
    with conn:
        query = 'select id, name, price from product;'
        c = conn.cursor()
        c.execute(query)
        records = c.fetchall()
        c.close()
    return records


def get_products(category_id):
    """
    Retrieves the products within a category
    :param category_id: Id of category
    :return: List of tuples with products
    """
    with conn:
        query = """
            select id, name, description, price from product
            where category_id = %s::integer;
        """
        c = conn.cursor()
        c.execute(query, (category_id,))
        records = c.fetchall()
        c.close()
    return records


def get_product(product_id):
    """
    Retrieves a product with specific id
    :param product_id: Id of product
    :return: Tuple with product
    """
    with conn:
        query = """
            select description, price from product
            where id = %s::integer;
        """
        c = conn.cursor()
        c.execute(query, (product_id,))
        records = c.fetchone()
        c.close()
    return records
