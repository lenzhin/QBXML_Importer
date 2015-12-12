//Add References
using System.Data.SqlClient;
using System.Xml.Linq;

//Modify buildRequest() to pull QBXML out of SQL

		public ArrayList buildRequest() 
		{
			string strRequestXML ="";
            //Open connection
			SqlConnection con = new SqlConnection("Data Source='Your connection string'");
            if (con.State != ConnectionState.Open)
                con.Open();
			
            // Create inputXMLDoc using stored procedures
			// 
            SqlCommand GetinputXMLDoc = new SqlCommand("02CreateQBXMLCustomers", con);
			//SqlCommand GetinputXMLDoc = new SqlCommand("03CreateQBXMLInvoices", con);
			//SqlCommand GetinputXMLDoc = new SqlCommand("04CreateQBXMLPayments", con);
            GetinputXMLDoc.CommandType = CommandType.StoredProcedure;
            var inputXMLDoc = new XmlDocument();
            var readinputXMLDoc = GetinputXMLDoc.ExecuteXmlReader();
            if (readinputXMLDoc.Read())
                inputXMLDoc.Load(readinputXMLDoc);
            XmlDeclaration custXmlDec =
            inputXMLDoc.CreateXmlDeclaration("1.0", null, null);
            inputXMLDoc.InsertBefore(custXmlDec, inputXMLDoc.DocumentElement);
            XmlProcessingInstruction custXmlProc =
            inputXMLDoc.CreateProcessingInstruction("qbxml", "version=\"13.0\"");
            inputXMLDoc.InsertBefore(custXmlProc, inputXMLDoc.DocumentElement);
			strRequestXML = inputXMLDoc.OuterXml;
			req.Add(strRequestXML);
			return req;
			con.Close();
		}
