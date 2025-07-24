codeunit 50108 CustomerValidation
{
    local procedure ValidateCustomerFields(Rec: Record Customer)
    begin
        if Rec."VAT Registration No." = '' then
            Error('VAT Registration No. is required.');

        if Rec."E-Mail" = '' then
            Error('Email is required.');

        if not IsValidEmail(Rec."E-Mail") then
            Error('Email address is invalid. It must contain an "@" and a domain.');
    end;

    local procedure IsValidEmail(Email: Text): Boolean
    var
        AtPos: Integer;
        DomainPart: Text;
    begin
        AtPos := StrPos(Email, '@');
        if AtPos <= 1 then
            exit(false);

        DomainPart := CopyStr(Email, AtPos + 1);
        if StrPos(DomainPart, '.') <= 1 then
            exit(false);

        exit(true);
    end;

    // Public method so page extension can call it
    procedure ValidateCustomer(Rec: Record Customer)
    begin
        ValidateCustomerFields(Rec);
    end;
}
