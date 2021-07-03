tableextension 50000 "SDH Customer" extends Customer
{
    fields
    {
        field(50000; "SDH Rating"; Enum "SDH Rating")
        {
            Caption = 'Rating';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
}