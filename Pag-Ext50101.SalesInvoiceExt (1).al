namespace ALProject.ALProject;

using Microsoft.Sales.Document;

pageextension 50101 "SalesInvoiceExt" extends "Sales Invoice"
{
    layout
    {
        modify("No.")
        {
            Visible = false;
        }

        modify("Sell-to Customer No.")
        {
            Visible = true;
        }

        modify("Sell-to")
        {
            Visible = false;
        }

        modify("Sell-to Contact")
        {
            Visible = false;
        }

        modify("Your Reference")
        {
            Visible = false;
        }

        modify("Payment Method Code")
        {
            Visible = true;
        }

        modify("Campaign No.")
        {
            Visible = false;
        }

        modify("Salesperson Code")
        {
            Visible = false;
        }

        modify("Assigned User ID")
        {
            Visible = false;
        }

        modify("Currency Code")
        {
            Visible = true;
        }

        modify("Work Description")
        {
            Visible = false;
        }

        modify("Invoice Details")
        {
            Visible = false;
        }
    }
}
