class Course {
  Course(this.course_name, this.student_name, this.total_hours, this.price);

  var course_name;
  var student_name;
  var total_hours;
  var price;

  static List<Course> courses = [];

  // Get Course Name by Top Price Course
  static String getTopPriceCourseName() {
    courses.sort((a, b) => b.price.compareTo(a.price)); // 3 2 1
    return courses.first.course_name;
  }
}
