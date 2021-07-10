enum 50001 "SDH Rating Impl" implements "SDH Rating"
{
    Extensible = true;
    DefaultImplementation = "SDH Rating" = "SDH My Rating";
    UnknownValueImplementation = "SDH Rating" = "SDH Unkown Rating";
    value(0; "Standard")
    {
        Implementation = "SDH Rating" = "SDH My Rating";
    }
    value(1; "LastYearSale")
    {
        Implementation = "SDH Rating" = "SDH My Rating2";
    }
}