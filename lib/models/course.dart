class Course {
  Course(this.course_name, this.student_name, this.total_hours, this.price);

  var course_name;
  var student_name;
  var total_hours;
  var price;

  static List<Course> courses = [];

  static String getTopPriceCourseName() {
    courses.sort((a, b) => b.price.compareTo(a.price));
    return courses.first.course_name;
  }
}
