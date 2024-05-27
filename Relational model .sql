Type(Type_id,Type_Name) 
Hotel(Hotel_id,Hotel_name,#Type_id)
Room(Room_id,Floor,#Hotel_id,#Category_id)
Category(Category_id,Category_Name,Price,beds_numbers)
Employee(Employee_id,Employee_Name,Employee_Speciality,#Hotel_id,#director_id)

 
CREATE TABLE Type (
    Type_id NUMBER PRIMARY KEY,
    Type_Name VARCHAR(20)
);

 
CREATE TABLE Hotel (
    Hotel_id NUMBER PRIMARY KEY,
    Hotel_name VARCHAR(20),
    Type_id NUMBER,
    FOREIGN KEY (Type_id) REFERENCES Type(Type_id)
);


CREATE TABLE Category (
    Category_id NUMBER PRIMARY KEY,
    Category_Name VARCHAR(20),
    Price NUMBER,
    beds_numbers NUMBER
);


CREATE TABLE Room (
    Room_id NUMBER PRIMARY KEY,
    Floor VARCHAR(20),
    Hotel_id NUMBER,
    Category_id NUMBER,
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id),
    FOREIGN KEY (Category_id) REFERENCES Category(Category_id)
);


CREATE TABLE Employee (
    Employee_id NUMBER PRIMARY KEY,
    Employee_Name VARCHAR(20),
    Employee_Speciality VARCHAR(20),
    Hotel_id NUMBER,
    director_id NUMBER,
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id),
    FOREIGN KEY (director_id) REFERENCES Employee(Employee_id)
);



