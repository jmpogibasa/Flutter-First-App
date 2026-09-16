STEP 1 BUILDING THE DATA SET
import pandas as pd

from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score,confusion_matrix,classification_report

data = {
    'student_name' :['Esguerra','Santos','Penalosa','Awas', 'Valdez', 'Pitogo', 'Lapuz'
    ,'Basa', 'Menor', 'Tappa', 'Permejo', 'Punzalan', 'Jardin', 'Rala', 'Valenzuela',
    'Gasga', 'Binuya', 'Chavez', 'Gonzales', 'Esponilla' ],

    'studyhours' : [1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10],
    'attendance_rate' : [1,5,6,77,55,44,63,87,99,100,34,56,6,77,88,44,33,67,45,30],
    'passed' : [0,1,1,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1]
}

df = pd.DataFrame(data)
df['status'] = df['passed'].map({1: 'Passed', 0: "At Risk"})
print(df[['student_name','studyhours','attendance_rate','status']])

STEP 2 SPLIT
import pandas as pd
from sklearn.model_selection import train_test_split

X = df[['studyhours', 'attendance_rate']]
y = df['passed']
names = df['student_name']

X_train, X_test, y_train, y_test, names_train, names_test = train_test_split(
    X, y, names, test_size=0.25, random_state=42
)

print("Training Group")
print(list(names_train))

print("\nTesting Group")
print(list(names_test))

STEP 3
model = DecisionTreeClassifier (max_depth=3, random_state=42)
model.fit(X_train, y_train)

print("Model Trained on", len(X_train), "Students")

STEP 4 PREDICT THE TESTING GROUP
y_pred = model.predict(X_test)

results = pd.DataFrame({
    'student_name' : names_test.values,
    'actual' : y_test.map({1: "passed", 0: "at Risk"}).values,
    'predicted' : pd.Series(y_pred).map({1: "passed", 0: "At Risk"}).values
})

print(results)

STEP 5 GRADE THE MODEL
acc = accuracy_score(y_test, y_pred)
print("Accuracy", round(acc*100,2), "%")
print(classification_report(y_test, y_pred, target_names= ['At Risk', 'Passed']))

