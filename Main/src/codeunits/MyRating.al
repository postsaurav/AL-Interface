codeunit 50000 "SDH My Rating" implements "SDH Rating"
{
    procedure SetCustomerRating(Customer: Record Customer)
    begin
        Customer."SDH Rating" := GetCustomerRating(Customer);
        Customer.Modify();
    end;

    procedure SetAllCustomerRating()
    var
        Customer: Record Customer;
    begin
        if Customer.FindFirst() then
            repeat
                Customer."SDH Rating" := GetCustomerRating(Customer);
                Customer.Modify();
            until (Customer.Next() = 0);
    end;

    procedure ReSetCustomerRating(Customer: Record Customer)
    begin
        Customer."SDH Rating" := Customer."SDH Rating"::" ";
        Customer.Modify();
    end;

    procedure ReSetAllCustomerRating()
    var
        Customer: Record Customer;
    begin
        if Customer.FindFirst() then
            Customer.modifyall("SDH Rating", Customer."SDH Rating"::" ");
    end;

    local procedure GetCustomerRating(Customer: Record Customer): Enum "SDH Rating"
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        TotalAmt: Decimal;
        RatingVar: Enum "SDH Rating";
    begin
        CustLedgerEntry.SetRange("Customer No.", Customer."No.");
        IF CustLedgerEntry.IsEmpty() then
            Exit(RatingVar::" ");

        CustLedgerEntry.SetAutoCalcFields(Amount);
        repeat
            TotalAmt += CustLedgerEntry.Amount;
        until (CustLedgerEntry.Next() = 0);

        if TotalAmt <= 1000 then
            exit(RatingVar::Bronze)
        else
            exit(RatingVar::Silver);
    end;
}