using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@studentId", studentId);
                    connection.Open();
                    SqlDataReader rdr = command.ExecuteReader();
                    while (rdr.Read())
                    {
                        studentModel = new StudentModel();
                        studentModel.ID = rdr[0].ToString();
                        studentModel.Name = rdr[1].ToString();
                        studentModel.Gender = rdr[2].ToString();
                        studentModel.Nationality = rdr[3].ToString();
                        studentModel.DepartmentName = rdr[4].ToString();
                        studentModel.Session = rdr[5].ToString();
                        studentModel.Email = rdr[6].ToString();
                        studentModel.Phone = rdr[7].ToString();
                        studentModel.PresentAddress = rdr[8].ToString();
                        studentModel.PermanentAddress = rdr[9].ToString();
                    }
                    connection.Close();
                }
            }
            return studentModel;
        }

        public int UpdatePhoneNumber(string phoneNumber, string studentId, string emailId)
        {
            string query = String.Format("Update tblStudent set phone=@phone where studentId=@studentId and email=@emailId");
            int rowsUpdated = 0;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand(query,connection))
                {
                    command.Parameters.AddWithValue("@phone",phoneNumber);
                    command.Parameters.AddWithValue("@studentId", studentId);
                    command.Parameters.AddWithValue("@emailId", emailId);
                    connection.Open();
                    rowsUpdated = command.ExecuteNonQuery();
                    connection.Close();
                }
            }
            return rowsUpdated;
        }

        public int UpdatePresentAddress(string address, string studentId, string emailId)
        {
            string query = String.Format("Update tblStudent set presentAddress=@presentAddress where studentId=@studentId and email=@emailId");
            int rowsUpdated = 0;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@presentAddress", address);
                    command.Parameters.AddWithValue("@studentId", studentId);
                    command.Parameters.AddWithValue("@emailId", emailId);
                    connection.Open();
                    rowsUpdated = command.ExecuteNonQuery();
                    connection.Close();
                }
            }
            return rowsUpdated;
        }
    }
}