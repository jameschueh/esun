const sqlMap = {
    Stu: {
      add: 'insert into axios_demo(stu_Id,stu_name,stu_sex,stu_college,stu_class) values (0,?,?,?,?)',
      show: 'select * from axios_demo',
      del: 'delete from axios_demo where stu_Id = ?',
      update: 'update axios_demo set stu_name = ?,stu_sex = ?,stu_college = ?,stu_class = ? where stu_Id = ?'
    }
  }
  
  module.exports = sqlMap