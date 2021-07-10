//
codeunit 50003 "SDH Unkown Rating" implements "SDH Rating"
{
    procedure SetCustomerRating(Customer: Record Customer)
    begin
        Message('Rating Method is unkown, Please check rating method in Sales & Receiv. Setup');
    end;

    procedure SetAllCustomerRating()
    begin
        Message('Rating Method is unkown, Please check rating method in Sales & Receiv. Setup');
    end;

    procedure ReSetCustomerRating(Customer: Record Customer)
    begin
        Message('Rating Method is unkown, Please check rating method in Sales & Receiv. Setup');
    end;

    procedure ReSetAllCustomerRating()
    begin
        Message('Rating Method is unkown, Please check rating method in Sales & Receiv. Setup');
    end;
}