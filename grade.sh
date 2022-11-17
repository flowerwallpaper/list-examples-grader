# Create your grading script here

set -e

rm -rf student-submission
git clone $1 student-submission

cp TestListExamples.java

cd student-submission

cat TestListExamples.java

if [ -f "ListExamples.java" ]
then 
    echo "File submitted!"
else 
    echo "ListExamples.java not submitted" 
fi

javac ListExamples.java TestListExamples.java
java ListExamples TestListExamples


