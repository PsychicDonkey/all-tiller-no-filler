-- ALL SCHEMAS
order_data : orders info
    id_order
    id_store
    Id_table
    Id_waiter
    Id_device: Device id where order has been placed
    Date_opened: Table open date
    date_closed: Table close date
    Dim_status: Order status
    Dim_source: Name of device where order has been placed
    M_nb_customer: Number of customers associated to order
    M_cached_payed: Price payed
    M_cached_price: Price to pay
order_line : Orders items
    Id_order_line: Id of ordered item
    Id_order
    Date_opended: Date item is ordered
    Date_created: Date item is saved
    m_quantity: Quantity
    m_unit_price: Price
    m_unit_price_exc_vat: Price without vat
    m_total_price_inc_vat: Price with vat
    m_total_price_exc_vat: Total price without vat
    m_tax_percent: Vat percentage applied
    m_discount_amount: Discount
    dim_type : Types (products, discounts…)
    dim_category : Category (beverages…)
    dim_name : Item’s name (risotto, …)
    dim_status : Item status
    dim_feature_type : Item type
    dim_unit_measure
    dim_unit_measure_display
Payment_data : Payment info
    id_pay : Payment id
    id_order
    dim_status : Payment status
    dim_type : Payment type
    m_amount : Payment amount
    m_cashback
    m_credit
date_created
    store_data : Restaurants info
    id_store
    date_created: Subscription date
    dim_zipcode
    dim_country
    dim_currency
