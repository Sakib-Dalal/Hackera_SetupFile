import os
import io
import matplotlib
matplotlib.use('Agg')  # Use the 'Agg' backend for rendering to a file
import matplotlib.pyplot as plt
import numpy as np
from flask import Flask, render_template, make_response

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/plot.png')
def plot_png():
    # Generate a plot
    fig, ax = plt.subplots()
    x = np.linspace(0, 10, 100)
    y = np.sin(x)
    ax.plot(x, y)
    ax.set(title='Simple Sine Wave Plot')

    # Save it to a BytesIO object and return it as a PNG
    output = io.BytesIO()
    fig.savefig(output, format='png')
    output.seek(0)

    return make_response(output.getvalue(), {'Content-Type': 'image/png'})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)