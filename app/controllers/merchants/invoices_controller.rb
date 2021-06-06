class Merchants::InvoicesController < ApplicationController

  def index
    @merchant = Merchant.find(params[:merchant_id])
    @merchant_invoices = @merchant.items.merchant_invoices
  end

  def show
    @invoice = Invoice.find(params[:id])
    @customer = Customer.find(@invoice.customer_id)
    @invoice_items = InvoiceItem.invoice_items_show(@invoice.id)
  end
end
