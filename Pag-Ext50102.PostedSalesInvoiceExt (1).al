namespace ALProject.ALProject;

using Microsoft.Sales.History;

pageextension 50102 "PostedSalesInvoiceExt" extends "Posted Sales Invoice"
{
    layout
    {
        // Add User ID field shown in your custom version
        addlast("General")
        {
            field(UserID; Rec."User ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the User who posted the sales Invoice.';
                Importance = Additional;
                Editable = false;
                Caption = 'User ID';
            }
        }
    }
}