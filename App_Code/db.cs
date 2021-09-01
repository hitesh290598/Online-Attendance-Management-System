using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;

public class db
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["AttendanceManagement"].ConnectionString);
    SqlCommand cmd = new SqlCommand();

    public db()
    {

    }

    public void openConn()
    {
        if (con.State == System.Data.ConnectionState.Open)
        {
            con.Close();
            con.Open();
        }
        else
        {
            con.Open();
        }
    }

    public void insertData(string query)
    {
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            cmd.ExecuteNonQuery();
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
    }

    public void deleteData(string query)
    {
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            cmd.ExecuteNonQuery();
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
    }

    public void updateData(string query)
    {
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            cmd.ExecuteNonQuery();
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
    }

    public string latestId(string table, string column)
    {
        string id = "error";
        try
        {
            string query = "select max(" + column + ") + 1 from " + table + "";
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            if (cmd.ExecuteScalar().ToString().Equals(""))
            {
                id = "1";
            }
            else
            {
                id = cmd.ExecuteScalar().ToString();
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return id;
    }

    public Dictionary<string, string> fillDropdown(string table, string valueCol, string displayCol)
    {

        Dictionary<string, string> list = new Dictionary<string, string>();

        string query = "select " + valueCol + "," + displayCol + " from " + table + "";

        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                list.Add(dr[0].ToString(), dr[1].ToString());
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return list;
    }

    public Dictionary<string, string> fillDropdown(string table, string valueCol, string displayCol, string compareCol, string compareValueId)
    {

        Dictionary<string, string> list = new Dictionary<string, string>();

        string query = "select " + valueCol + "," + displayCol + " from " + table + " where " + compareCol + " = " + compareValueId;

        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                list.Add(dr[0].ToString(), dr[1].ToString());
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return list;
    }
    public string checkCompareDropdown(string tableName, string column1, string valueColumn1, string column2, string valueColumn2)
    {
        //returns fail if no record found and returns pass if record exist
        string flag = "fail";
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = "select * from " + tableName + " where " + column1 + "=" + valueColumn1 + " and " + column2 + "=" + valueColumn2 + "";
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                flag = "pass";
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return flag;
    }

    public string comparevalidateuser(string tableName, string columnUserName, string valueUserNameToCompare)
    {
        //returns fail:null:null if no user found and returns pass:id:role if user exist
        string flag = "fail:null:null";
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = "select * from " + tableName + " where " + columnUserName + "='" + valueUserNameToCompare + "'";
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                flag = "pass:" + dr[0].ToString() + ":" + dr[1].ToString();
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return flag;
    }

    public DataSet selectData(string query)
    {
        DataSet dsdata = new DataSet();

        try
        {

            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dsdata);
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();

        }
        return dsdata;
    }

    public Boolean checkAvailablity(string TableName, String ColumnName, String ValueToCompare)
    {
        Boolean flag = true;
        try
        {

            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = "select " + ColumnName + " from " + TableName + " where " + ColumnName + " = '" + ValueToCompare + "'";
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                flag = true;
            }
            else
            {
                flag = false;
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }

        return flag;

    }

    public string sliderDetails(string table, string ImageCol, string DescCol, string TitleCol, string GroupCol, string hlink, string grpvalue)
    {
        // if tourTypeId is = somthing give id else pass is not null
        string html = "";
        try
        {
            string query = "select adv_id , " + ImageCol + " , " + TitleCol + " , " + DescCol + " , " + hlink + " from " + table + " where " + GroupCol + " = '" + grpvalue + "'";
            //html = query;
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string title = "";
                    title = "<b>" + dr[2].ToString() + "</b><br><i>" + dr[3].ToString() + "</i><br><a href='" + dr[4].ToString() + "'>Read More</a>";
                    html += "<li><img src='images/" + dr[1].ToString() + "' title=\"" + title + "\"/></li>";
                }
            }

        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return html;
    }

    public string VsliderDetails(string table, string headCol, string DescCol, string LinkCol)
    {
        // if tourTypeId is = somthing give id else pass is not null
        string html = "";
        try
        {
            string query = "select " + headCol + "," + DescCol + "," + LinkCol + " from " + table + "";
            html = query;
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                string title = "";
                while (dr.Read())
                {

                    title += "<li><div class=\"vscrollHeight\"><b>" + dr[0] + "</b><br><br>" +
                        "<i>" + dr[1] + "</i><br><br><a href=\"" + dr[2] + "\">Read More</a><hr/></div></li>";
                }
                html = title;
            }

        }
        catch (Exception x)
        {
            Console.WriteLine(x);
            html = x.ToString();
        }
        finally
        {
            con.Close();
        }
        return html;
    }

    public string getSingleRow(string query)
    {
        string ret = "";
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                for (int i = 0; i < dr.FieldCount; i++)
                {
                    ret += dr[i].ToString() + ":";
                }
            }
        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return ret;

    }

    public string GetSingleRow(string query)
    {
        string ret = "";
        try
        {
            cmd.Dispose();
            cmd.Connection = con;
            cmd.CommandText = query;
            openConn();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                for (int i = 0; i < dr.FieldCount; i++)
                {
                    ret += dr[i].ToString() + ":";
                }
            }

        }
        catch (Exception x)
        {
            Console.WriteLine(x);
        }
        finally
        {
            con.Close();
        }
        return ret;
    }

    public void sendmail(string rec, string subject, string body)
    {
        // before updating the code for yours gmail username annd password perform one step in gmail account
        // https://www.google.com/settings/security/lesssecureapps
        // Access for less secure apps select --> Turn on

        // also add namespaces in db.cs file and add this method in db.cs file

        //using System.Net;
        //using System.Net.Mail;

        string un = "attendancesystem123@gmail.com";
        string pas = "attendance@123";

        var client = new SmtpClient("smtp.gmail.com", 587)
        {
            Credentials = new NetworkCredential(un, pas),
            EnableSsl = true
        };

        client.Send(un, rec, subject, body);
        //Console.WriteLine("Sent");
        //Console.ReadLine();
    }
 }