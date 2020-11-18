@EndUserText.label: 'Travel Data Projection'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZBG_C_RAP_TRAVEL_U as projection on ZBG_I_RAP_TRAVEL_U {
    //ZBG_I_RAP_TRAVEL_U
    key TravelID,
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
    @Search.defaultSearchElement: true
    AgencyID,
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Customer', element: 'CustomerID' } } ]
    @Search.defaultSearchElement: true
    CustomerID,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
    CurrencyCode,
    Description,
    Status,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    //ZBG_I_RAP_TRAVEL_U
    _Agency,
    _Booking: redirected to composition child ZBG_C_RAP_BOOKING_U,
    _Currency,
    _Customer
}
