class Student:
    def __init__(self, name, age, grade_level):
        self.name = name
        self.age = age
        self.grade_level = grade_level

    def print_info(self):
        print(f"Student Information:\nName: {self.name}\nAge: {self.age}\nGrade Level: {self.grade_level}")


class Teacher:
    def __init__(self, name, age, subject):
        self.name = name
        self.age = age
        self.subject = subject

    def print_info(self):
        print(f"Teacher Information:\nName: {self.name}\nAge: {self.age}\nSubject: {self.subject}")


class School:
    def __init__(self):
        self.student = None
        self.teacher = None

    def create_student(self, name, age, grade_level):
        self.student = Student(name, age, grade_level)

    def create_teacher(self, name, age, subject):
        self.teacher = Teacher(name, age, subject)

    def print_all_info(self):
        if self.student:
            self.student.print_info()
        else:
            print("No student information available.")

        if self.teacher:
            self.teacher.print_info()
        else:
            print("No teacher information available.")


# Create instances and test the functionality
if __name__ == "__main__":
    school = School()

    # Create a student
    school.create_student("John Doe", 15, "10th Grade")

    # Create a teacher
    school.create_teacher("Jane Smith", 40, "Mathematics")

    # Print all information
    school.print_all_info()
