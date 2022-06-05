from flask import Flask, render_template, request

app = Flask('Real Instal Webapp')

prod = {
	1: 'Chiuveta',
	2: 'teava'
}


@app.route('/')
@app.route('/desprenoi/')
def get_acasa():
	return render_template('acasa.html')


@app.route('/produse/')
def get_produse():
	return render_template('produse.html')


@app.route('/contact/')
def get_contact():
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


@app.route('/produse/categorie/<int:category_id>')
def get_categorie(category_id):

	return render_template('search.html', category_id=category_id)


if __name__ == '__main__':
	app.run(debug=True)
