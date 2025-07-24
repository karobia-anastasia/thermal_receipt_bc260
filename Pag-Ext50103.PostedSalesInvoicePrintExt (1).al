// Page extension to add the report to the Posted Sales Invoice page
namespace ALProject.ALProject;

using Microsoft.Sales.History;

pageextension 50103 "PostedSalesInvoicePrintExt" extends "Posted Sales Invoice"
{
    actions
    {
        // Add a new action in the Reports menu
        addafter(Print)
        {
            action(PrintThermal)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Print Thermal';
                ToolTip = 'Print the document in thermal printer format.';
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6; // Same category as other print actions

                trigger OnAction()
                var
                    SalesInvHeader: Record "Sales Invoice Header";
                begin
                    SalesInvHeader := Rec;
                    CurrPage.SetSelectionFilter(SalesInvHeader);
                    Report.Run(50100, true, false, SalesInvHeader)
                end;
            }
        }
    }
}