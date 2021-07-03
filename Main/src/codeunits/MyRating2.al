codeunit 50001 "SDH My Rating2" implements "SDH Rating"
{
    procedure SetCustomerRating(Customer: Record Customer)
    begin
        Customer."SDH Rating" := GetCustomerRating(Customer);
        Customer.Modify();
    end;

    procedure SetAllCustomerRating()
    begin
    end;

    procedure ReSetCustomerRating(Customer: Record Customer)
    begin
    end;

    procedure ReSetAllCustomerRating()
    begin
    end;

    local procedure GetCustomerRating(Customer: Record Customer): Enum "SDH Rating"
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        TotalAmt: Decimal;
        RatingVar: Enum "SDH Rating";
    begin
        CustLedgerEntry.SetRange("Customer No.", Customer."No.");
        CustLedgerEntry.SetFilter("Posting Date", '%1..', CalcDate('<-1Y>', Today));
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