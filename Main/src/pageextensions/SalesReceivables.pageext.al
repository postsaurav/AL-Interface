pageextension 50001 "SDH Sales Receivables" extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(General)
        {
            field("SDH Rating Method"; Rec."SDH Rating Method")
            {
                ApplicationArea = All;
            }
        }
    }
}