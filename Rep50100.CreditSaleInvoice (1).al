report 50100 "Credit Sale Invoice"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/CreditSaleInvoice.rdl';
 
    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            column(SalesInvNo; "No.") { }
        }
    }
}