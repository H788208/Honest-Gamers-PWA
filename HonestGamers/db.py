import sqlite3
from werkzeug.security import generate_password_hash, check_password_hash

def GetDB():

    db = sqlite3.connect("databasestuff/gtg.db")
    db.row_factory = sqlite3.Row

    return db

def GetAllGuesses():

    db = GetDB()

    guesses = db.execute("""SELECT Guesses.date, Guesses.game, Guesses.score, Guesses.review, Users.username
                            FROM Guesses JOIN Users ON Guesses.user_id = Users.id
                            ORDER BY date DESC""").fetchall()
    db.close()
    return guesses

def CheckLogin(username, password):

    db = GetDB()

    user = db.execute("SELECT * FROM Users WHERE username=?", (username,)).fetchone()

    if user is not None:
        if check_password_hash(user['password'], password):
            return user

    return None

def RegisterUser(username, password):

    if username is None or password is None:
        return False

    db = GetDB()
    hash = generate_password_hash(password)
    db.execute("INSERT INTO Users(username, password) VALUES(?, ?)", (username, hash,))
    db.commit()

    return True


def AddGuess(user_id, date, game, review, score):
   
    if date is None or game is None:
        return False
   
    db = GetDB()
    db.execute("INSERT INTO Guesses(user_id, date, game, review, score) VALUES (?, ?, ?, ?, ?)",
               (user_id, date, game, review, score,))
    db.commit()

    return True

def GetProfile(guessdata, username, user_id, date, game, review, score):
    
    db = GetDB()
    db.execute("SELECT * FROM Users WHERE username = session", (username,)).fetchone()
    
    db.commit()
    
    return True

