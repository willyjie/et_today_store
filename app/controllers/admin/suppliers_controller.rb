# frozen_string_literal: true

class Admin::SuppliersController < Admin::BaseController
  before_action :find_supplier, only: %i[edit update destroy]

  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to admin_suppliers_path, notice: "Supplier was successfully created."
    else
      render :new
    end
  end

  def edit; end

  def update
    if @supplier.update(supplier_params)
      redirect_to admin_suppliers_path, notice: "Supplier was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @supplier.destroy
    redirect_to admin_suppliers_path, alert: "Supplier was successfully destroyed."
  end

  private

  def find_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name)
  end
end
