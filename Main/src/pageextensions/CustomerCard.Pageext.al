pageextension 50000 "SDH Customer Card" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("SDH Rating"; rec."SDH Rating")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the value of the Rating field';
            }
        }
    }

    actions
    {
        addfirst("F&unctions")
        {
            action(SetRating)
            {
                ApplicationArea = All;
                Image = CustomerRating;
                trigger OnAction()
                var
                    SalesReceivablesSetup: Record "Sales & Receivables Setup";
                    RatingImplementation: Interface "SDH Rating";
                begin
                    SalesReceivablesSetup.Get();
                    RatingImplementation := SalesReceivablesSetup."SDH Rating Method";
                    RatingImplementation.SetCustomerRating(Rec);
                end;
            }
        }
    }
}