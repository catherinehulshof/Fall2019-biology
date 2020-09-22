---
layout: page
title: Syllabus
catalog: BIOL 691
credits: 3
semester: Fall 2020
professor: Dr. Catherine Hulshof
office: Online
email: cmhulshof@vcu.edu
schedule: Asynchronous (reserve 1:00 pm - 3:50 pm	W for occasional online meetups)
location: Online
office_hours: Online
office_hours_location: Online
---

## {{ site.title }}

{{ page.catalog }}, {{ page.credits }} Credits, {{ page.semester }}

### Professor

{{ page.professor }}

Email:
[{{ page.email }}](mailto:{{ page.email }})

### Class Location

Online

### Times

{% for class in page.schedule %}
  {{ class }}
{% endfor %}

### Office Hours

Times: {{ page.office_hours }}

Location: {{ page.office_hours_location }}

Or by appointment.

*Note: my schedule gets busy during the semester so
please try to schedule appointments in advance. In general it
will be difficult to set up appointments less than 24 hours in advance.*

### Website

The syllabus and other relevant class information and resources will be posted
at [{{ site.url}}]({{ site.baseurl }}/).
Changes to the schedule will be posted to this site so please try to check it
periodically for updates.


### Course Communications

Email: [{{ page.email }}](mailto:{{ page.email }})

We will also use Canvas to submit assignments and for other course announcements and communications.


### Required Texts

There is no required text book for this class.


### Course Description

Computers are increasingly essential to the study of all aspects of
biology. Data management skills are needed for entering data without errors,
storing it in a usable way, and extracting key aspects of the data for
analysis. Basic programming is required for everything from accessing and
managing data, to statistical analysis, to modeling. This course will provide an
introduction to data management, manipulation, and analysis, with an emphasis on
biological problems. Class will typically consist of short introductions or
question & answer sessions, followed by hands on computing exercises. The course
will be taught using R and SQLite, but the concepts learned will easily apply to
all programming languages and database management systems. No background in
programming or databases is required.


### Prerequisite Knowledge and Skills

Knowledge of basic biology to provide context for exercises.


### Purpose of Course

In this course you will learn all of the fundamental aspects of computer
programming that are necessary for conducting biological research. By the end of
the course you will be able to use these tools to import data into R, perform
analysis on that data, and export the results to graphs, text files, and
databases. By learning how to get the computer to do your work for you, you will
be able to do more science faster.


### Course Goals and Objectives

Students completing this course will be able to:

* Create well structured data
* Extract information from data
* Write computer programs in R
* Automate data analysis
* Apply these tools to address biological questions
* Apply general data management and analysis concepts to other programming
  languages and database management systems


### Teaching Philosophy

This class is taught using a flipped, learner-centered, approach, because
learning to program and work with data requires actively working on
computers. Flipped classes work well for all kinds of content, but I think they
work particularly well for computer oriented classes. If you're interested in
knowing more take a look at this great
[info-graphic](https://www.knewton.com/flipped-classroom-2/).


### Instructional Methods

As a flipped classroom, students are provided with either reading or video
material that they are expected to view/read prior to class. Classes will
involve brief refreshers on new concepts followed by working on exercises in
class that cover that concept. While students are working on exercises the
instructor will actively engage with students to help them understand material
they find confusing, explain misunderstandings and help identify mistakes that
are preventing students from completing the exercises, and discuss novel
applications and alternative approaches to the data analysis challenges students
are attempting to solve. For more challenging topics class may start with 20-30
minute demonstrations on the concepts followed by time to work on exercises.


## Course Policies

### Special Policies for 2020

It has been a long, exhausting, year and it will continue to be so for many of us.
My goal is to help you learn as much as you can, while recognizing that most people have more limitations and less energy than usual.

The course is being taught online for the first time due to the pandemic.
To provide maximum flexibility the course material can be engaged with in three ways:

1. Fully synchronous: Attend class during the scheduled class periods. Follow each lesson, which combine video lectures and exercises, during the class periods and ask for help as you run into questions. This is the closest approximation to how the course normally runs in-person.
2. Synchronous Q&A: Follow each lesson before class, watching the videos and doing the exercises you can. Stop if you get confused. Come to class during the class periods and ask for help on challenges you encountered.
3. Asynchronous: Follow the lessons online and ask for help via Piazza. This is the least ideal approach because the course is generally based around the benefits of direct student-instructor interaction to work through misunderstandings, but we'll do our best to make it work for you.

The course always has flexible deadline policies (see below) and will continue to do so to support students learning under these difficult circumstances.
There is an automatic (no request needed) 48 hour extension on all assignments for those who need it.
If you need more time just let me know.
You never need to disclose personal information to me to get an extension. Just let me know how long you need.

### Class Recording

Our class sessions may be audio visually recorded for students in the class to refer back and for enrolled students who are unable to attend live. Students who participate with their camera engaged or utilize a profile image are agreeing to have their video or image recorded.  If you are unwilling to consent to have your profile or video image recorded, be sure to keep your camera off and do not use a profile image. Likewise, students who un-mute during class and participate orally are agreeing to have their voices recorded.  If you are not willing to consent to have your voice recorded during class, you will need to keep your mute button activated and communicate exclusively using the "chat" feature, which allows students to type questions and comments live. The chat will not be recorded or shared. As in all courses, unauthorized recording and unauthorized sharing of recorded materials is prohibited.

### Attendance Policy

Attendance will not be taken or factor into the grades for this class. However,
experience suggests that students who regularly miss class often struggle to learn the
material.


### Quiz/Exam Policy

All quizzes are online, open-book, honor system.


### Make-up policy

Life happens and therefore there is an automatic grace period of 48 hours for
the submission of late assignments with no need to request an extension.
However, it is highly recommended that you submit assignments on time when
possible because assignments build on one another and it can be hard to catch up
if you fall behind. Reasonable requests for longer extensions will also be granted.


### Assignment policy

Assignments are due Monday night by 11:59 pm Eastern Time.
This timing allows you to be finished with one week's material before starting the next week's material.
Assignments should be submitted via either RStudio Cloud (for R assignments) or Canvas (for other assignments).

### Course Technology

Students are required to provide their own laptops and to install free and open
source software on those laptops (see [Setup]({{ site.baseurl }}/computer-setup)
for installation instructions). Support will be provided by the instructor in
the installation of required software. If you don't have access to a laptop
please contact the instructor and they will do their best to provide you with
one.


## VCU Policies

Students should visit [http://go.vcu.edu/syllabus](http://go.vcu.edu/syllabus) and review all syllabus statement information. The full university syllabus statement includes information on safety, registration, the VCU Honor Code, student conduct, withdrawal and more.

**Most importantly, if you are struggling for any reason please come talk to me
and I will do my best to help.**


## Grading Policies

Grading for this course is based on 14 equally weighted assignments (75%), and 14 equally weighted quizzes (25%).

One problem
from each assignment (selected at the instructors discretion after the
assignments have been submitted) will receive a thorough code review and a
detailed grade. Other problems will be graded as follows:

* Produces the correct answer using the requested approach: 100%
* Generally uses the right approach, but a minor mistake results in an incorrect
    answer: 90%
* Attempts to solve the problem and makes some progress using the core concept:
    50%
* Answer demonstrates a lack of understanding of the core concept: 0%


### Grading scale

- **A 90-100**
- **B 80-89**
- **C 70-79**
- **D 60-69**
- **F <60**


## Course Schedule

The detailed course schedule is available on our course website at:
[{{ site.url }}/schedule]({{ site.baseurl }}/schedule).


**Disclaimer:** This syllabus represents my current plans and objectives. As we
go through the semester, those plans may need to change to enhance the class
learning opportunity. Such changes will be communicated clearly both on the
website and in class.
