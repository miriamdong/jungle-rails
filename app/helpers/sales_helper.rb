module SalesHelper
  def active_sale?
    Sale.active.any?
  end

   def sale_active
   if active_sale?
  Sale.active.first
 end
end
end