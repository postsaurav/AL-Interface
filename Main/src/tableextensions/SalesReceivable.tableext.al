tableextension 50001 "SDH Sales Receivables" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "SDH Rating Method"; Enum "SDH Rating Impl")
        {
            DataClassification = CustomerContent;
            Caption = 'Rating Method';
        }
    }
}