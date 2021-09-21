CREATE TABLE Students(  
    student_id CHAR(48) primary key,
    name VARCHAR(80) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    familyInconme MONEY DEFAULT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE StudentContacts(  
    contact_id SERIAL PRIMARY KEY,
    student_id CHAR(48) REFERENCES Students(student_id),
    contact_type INT NOT NULL,
    contact_value VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE StudentDocuments(  
    document_id SERIAL PRIMARY KEY,
    student_id CHAR(48) REFERENCES Students(student_id),
    document_type INT NOT NULL,
    document_value VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE StudentSituation(  
    situation_id SERIAL PRIMARY KEY,
    student_id CHAR(48) REFERENCES Students(student_id),
    place_of_birth VARCHAR(50) NOT NULL,
    scholarity VARCHAR(100) NOT NULL,
    marital_status VARCHAR(20) NOT NULL,
    relatives INT NOT NULL,
    employment_status VARCHAR(20),
    income MONEY DEFAULT NULL,
    family_income MONEY DEFAULT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Courses(  
    course_id CHAR(48) primary key,
    name VARCHAR(80) NOT NULL,
    description TEXT DEFAULT NULL,
    course_type INT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE StudentsCourses(  
    student_course_id SERIAL PRIMARY KEY,
    student_id CHAR(48) REFERENCES Students(student_id),
    course_id CHAR(48) REFERENCES Course(course_id),
    start DATE NOT NULL,
    finish DATE NOT NULL,
    evaluation TEXT DEFAULT NULL,
    course_type INT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);