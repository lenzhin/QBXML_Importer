USE [QBXML]
GO
/****** Object:  StoredProcedure [dbo].[03CreateQBXMLPayments]    Script Date: 12/11/2015 3:31:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[03CreateQBXMLPayments]
AS
BEGIN
	SET NOCOUNT ON;
SELECT DISTINCT 1 AS Tag,
       NULL AS Parent,
       'stopOnError' AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   NULL AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   NULL AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM   Payments 
UNION ALL
SELECT DISTINCT 2 AS Tag,
       1 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM   Payments 
UNION ALL
SELECT DISTINCT 3 AS Tag,
       2 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM   Payments 
UNION ALL
SELECT DISTINCT 4 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM   Payments 
UNION ALL
SELECT DISTINCT 5 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	    (SELECT CONVERT(VARCHAR(10), InvoiceDate, 120)) AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM  Payments 
UNION ALL
SELECT DISTINCT 6 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM   Payments 
UNION ALL
SELECT DISTINCT 7 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   Payment AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM  Payments 
UNION ALL
SELECT DISTINCT 8 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   'Cash' AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM   Payments 
UNION ALL
SELECT DISTINCT 9 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   'PAYMENT/DISCOUNT' AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM  Payments 
UNION ALL
SELECT DISTINCT 10 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   'Credit Card Payments' AS [DepositToAccountRef!10!FullName!element],
	   NULL AS [IsAutoApply!11!!element]
FROM  Payments 
UNION ALL
SELECT DISTINCT 11 AS Tag,
       3 AS Parent,
	   NULL AS [QBXMLMsgsRq!1!onError],
	   NULL AS [ReceivePaymentAddRq!2!requestID],
	   NULL AS [ReceivePaymentAdd!3!ReceivePaymentAdd!element],
	   CompanyName AS [CustomerRef!4!FullName!element],
	   NULL AS [TxnDate!5!!element],
	   InvoiceNumber AS [RefNumber!6!!element],
	   NULL AS [TotalAmount!7!!element],
	   NULL AS [PaymentMethodRef!8!FullName!element],
	   NULL AS [Memo!9!!element],
	   NULL AS [DepositToAccountRef!10!FullName!element],
	   'true' AS [IsAutoApply!11!!element]
FROM   Payments 
ORDER BY [CustomerRef!4!FullName!element],[RefNumber!6!!element],Tag
FOR XML EXPLICIT, ROOT ('QBXML')
END
