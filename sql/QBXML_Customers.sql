USE [QBXML]
GO
/****** Object:  StoredProcedure [dbo].[02CreateQBXMLAirCustomers]    Script Date: 12/11/2015 3:30:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[02CreateQBXMLCustomers]
AS
BEGIN
	SET NOCOUNT ON;
SELECT DISTINCT 1 AS Tag,
       NULL AS Parent,
       'continueOnError' AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   NULL AS [CustomerAdd!3!Name!element],
	   NULL AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   UNION ALL
	   SELECT DISTINCT 2 AS Tag,
       1 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   '0' AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   UNION ALL
	   SELECT DISTINCT 3 AS Tag,
       2 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   UNION ALL
	   SELECT DISTINCT 4 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   LEFT (CompanyName,41) AS [BillAddress!4!Addr1!element],
	   AddressLine1 AS [BillAddress!4!Addr2!element],
	   AddressLine2 AS [BillAddress!4!Addr3!element],
	   City AS [BillAddress!4!City!element],
	   State AS [BillAddress!4!State!element],
	   ZipCode AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   UNION ALL
	   SELECT DISTINCT 5 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   ISNULL (PhoneNumber,'') AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   UNION ALL
	   SELECT DISTINCT 6 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   ISNULL (Email,'') AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	    UNION ALL
	   SELECT DISTINCT 7 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   ISNULL (ContactName,'') AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   	    UNION ALL
	   SELECT DISTINCT 8 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   CustType AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   	    UNION ALL
	   SELECT DISTINCT 9 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   Rep AS [SalesRepRef!9!FullName!element],
	   NULL AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   UNION ALL
	   SELECT DISTINCT 10 AS Tag,
       3 AS Parent,
       NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [CustomerAddRq!2!requestID],
	   QBCompanyName AS [CustomerAdd!3!Name!element],
	   LEFT (CompanyName,41) AS [CustomerAdd!3!CompanyName!element],
	   NULL AS [BillAddress!4!Addr1!element],
	   NULL AS [BillAddress!4!Addr2!element],
	   NULL AS [BillAddress!4!Addr3!element],
	   NULL AS [BillAddress!4!City!element],
	   NULL AS [BillAddress!4!State!element],
	   NULL AS [BillAddress!4!PostalCode!element],
	   NULL AS [Phone!5!!element],
	   NULL AS [Email!6!!element],
	   NULL AS [Contact!7!!element],
	   NULL AS [CustomerTypeRef!8!FullName!element],
	   NULL AS [SalesRepRef!9!FullName!element],
	   SubscriberID AS [AccountNumber!10!!element]
	   FROM AirCustomers
	   ORDER BY [CustomerAdd!3!Name!element]
	   FOR XML EXPLICIT, ROOT ('QBXML')
END
