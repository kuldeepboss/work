#include <stdio.h>

struct student {
    int roll_Number;
    char name[50];
    float marks_subject1;
    float marks_subject2;
    float marks_subject3;
    float maxMarks;
    float minMarks;
    float obtainedMarks[3];
};


void main()
{
    struct student stu;
	clrscr();
    printf("Enter roll number: ");
    scanf("%d", &stu.roll_Number);

    printf("Enter name: ");
    scanf("%s", stu.name);

    printf("Enter marks for subjects1: ");
    scanf("%f",stu.marks_subject1);

    printf("Enter marks for subjects2: ");
    scanf("%f",stu.marks_subject2);

    printf("Enter marks for subjects3: ");
    scanf("%f",stu.marks_subject3);
    
    printf("Enter maximum marks for each subject: ");
    scanf("%f", &stu.maxMarks);

    printf("Enter minimum marks for each subject: ");
    scanf("%f", &stu.minMarks);

    printf("Enter marks obtained in subject 1: ");
    scanf("%f", &stu.obtainedMarks[0]);

    printf("Enter marks obtained in subject 2: ");
    scanf("%f", &stu.obtainedMarks[1]);

    printf("Enter marks obtained in subject 3: ");
    scanf("%f", &stu.obtainedMarks[2]);

    printf("\n----------result-----------\n");
    printf("Roll Number: %d\n", stu.roll_Number);
    printf("Name: %s\n", stu.name);
    printf("Marks: %.2f \n",stu.marks_subject1);
    printf("Marks: %.2f \n",stu.marks_subject2);
    printf("Marks: %.2f \n",stu.marks_subject3);
    printf("Enter maximum marks for each subject:",stu.maxMarks);
    printf("Enter minimum marks for each subject:",stu.minMarks);
    printf("Enter marks obtained in subject 1:",stu.obtainedMarks[0]);
    printf("Enter marks obtained in subject 2:",stu.obtainedMarks[1]);
    printf("Enter marks obtained in subject 3:",stu.obtainedMarks[2]);
getch();
}