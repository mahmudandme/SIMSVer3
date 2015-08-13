using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SIMS.Models;

namespace SIMS.DAL.Student
{
    public class StudentDAL
    {
        public StudentModel GetStudentInformation(String studentId)
        {
            StudentModel studentModel = null;
            string  query = String.Format("spGetTheStudentById");
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand(query,connection))
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@studentId", studentId);
                    SqlDataReader rdr = command.ExecuteReader();
                    while (rdr.Read())
                    {
                        studentModel = new StudentModel();
                        
                    }
                }
            }
            return studentModel;
        }
    }
}