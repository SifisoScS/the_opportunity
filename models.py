from app import db

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(80), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)
    location = db.Column(db.String(120))
    interests = db.Column(db.Text)
    password_hash = db.Column(db.String(128))

    def __repr__(self):
        return f'<User {self.username}>'

class Opportunity(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text, nullable=False)
    type = db.Column(db.String(50)) # e.g., job, course, tool
    location = db.Column(db.String(120))
    skills_required = db.Column(db.Text)
    link = db.Column(db.String(500))

    def __repr__(self):
        return f'<Opportunity {self.title}>'

class UserProgress(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'), nullable=False)
    tutorial_name = db.Column(db.String(200), nullable=False)
    progress_percentage = db.Column(db.Integer, default=0)

    user = db.relationship('User', backref=db.backref('progress', lazy=True))

    def __repr__(self):
        return f'<UserProgress {self.user.username} - {self.tutorial_name}>'


