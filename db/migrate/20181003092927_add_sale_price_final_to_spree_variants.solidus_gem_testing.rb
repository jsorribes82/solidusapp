# This migration comes from solidus_gem_testing (originally 20181003092755)
class AddSalePriceFinalToSpreeVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_variants, :sale_price_final, :decimal
  end
end
