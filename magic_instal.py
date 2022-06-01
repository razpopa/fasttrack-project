from flask import Flask, render_template

app = Flask('Magic Instal Webapp')


@app.route('/')
@app.route('/acasa')
def get_acasa():
	return render_template('acasa.html')


@app.route('/portofoliu')
def get_portofoliu():
	return render_template('portofoliu.html')


@app.route('/contact')
def get_contact():
	return render_template('contact.html')


if __name__ == '__main__':
	app.run(debug=True)
