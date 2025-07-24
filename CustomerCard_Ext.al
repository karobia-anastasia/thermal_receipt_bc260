pageextension 50109 CustomerCardExt extends "Customer Card"
{
    var
        CustomerValidation: Codeunit CustomerValidation;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        CustomerValidation.ValidateCustomer(Rec);
        exit(true); 
    end;
}