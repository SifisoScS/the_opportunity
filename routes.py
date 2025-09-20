from flask import render_template, flash, redirect, url_for, request
from app import app, db
from app.models import User, Opportunity, UserProgress

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html', title='Home')

@app.route('/education')
def education():
    return render_template('education.html', title='AI Education Hub')

@app.route('/opportunities')
def opportunities():
    return render_template('opportunities.html', title='Opportunity Finder')

@app.route('/community')
def community():
    return render_template('community.html', title='Community Showcase')

@app.route('/sandbox')
def sandbox():
    return render_template('sandbox.html', title='AI Sandbox')

@app.route('/collaboration')
def collaboration():
    return render_template('collaboration.html', title='Collaboration Network')


