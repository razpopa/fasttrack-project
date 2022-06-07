from flask import Flask, render_template, request
import data_layer.data_access as da

app = Flask('Real Instal Webapp')


@app.route('/')
@app.route('/desprenoi/')
def get_acasa():
	return render_template('acasa.html')


@app.route('/produse/')
def get_produse():
	products = da.get_all_products()
	categories = da.get_categories()
	return render_template('products.html', products=products, categories=categories)


@app.route('/produs/<int:product_id>')
def get_produs(product_id):
	product = da.get_product(product_id)
	return render_template('product-details.html', product=product)


@app.route('/contact/')
def get_contact():
	return render_template('contact.html')


@app.route('/contact/sent')
def send_message():
	return render_template('contact.html')


@app.route('/search/', methods=['GET', 'POST'])
def search():
	if request.method == 'POST':
		srch = request.form
	else:
		srch = request.args

	# name = srch.get('name').lower()
	# temp_st = {}
	# for k, v in prod.items():
	# 	if name in v.lower():
	# 		temp_st[k] = v

	return render_template('search.html')


@app.route('/categorie/<int:category_id>')
def get_categorie(category_id):

	return render_template('search.html', category_id=category_id)


@app.errorhandler(404)
def page_not_found(e):
	"""Catch inexistent routes"""
	return render_template('errors/404.html')


if __name__ == '__main__':
	app.run(debug=True)
