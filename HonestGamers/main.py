from flask import Flask, render_template, request, session, redirect
import db

app = Flask(__name__)
app.secret_key = "27"

@app.route("/")
def Home():
    guessData = db.GetAllGuesses()
    return render_template("index.html", guesses=guessData)

@app.route("/login", methods=["GET", "POST"])
def Login():

    if request.method == "POST":
        username = request.form['username']
        password = request.form['password']

        user = db.CheckLogin(username, password)
        if user:
            session['username'] = user['username']
            session['id'] = user['id']

            return redirect("/")

    return render_template("login.html")

@app.route("/logout")
def Logout():
    session.clear()
    return redirect("/")

@app.route("/register", methods=["GET", "POST"])
def Register():

    if request.method == "POST":
        username = request.form['username']
        password = request.form['password']

        if db.RegisterUser(username, password):
            return redirect("/")
       
    return render_template("register.html")

@app.route("/add", methods=["GET","POST"])
def Add():
    if request.method == "POST":
        user_id = session['id']
        date = request.form['date']
        game = request.form['game']
        review = request.form['review']
        score = request.form['score']

        db.AddGuess(user_id, date, game, review, score)

    return render_template("add.html")

guessData = db.GetAllGuesses()

@app.route("/profile", methods=["GET","POST"])
def profile():


    if request.method == "POST":
        user_id = session['id']
        date = session['date']
        game = session['game']
        review = session['review']
        score = session['score']
        
        db.GetProfile(username, user_id, guessdata, date, game, review, score)

        return redirect("/")

    return render_template("profile.html")

app.run(debug=True, port=5000)

