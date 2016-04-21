class ProductsController < ApplicationController
  

  
 def index
  ##  @products = Product.order(:numero)

    @products = Product.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end

  end
  
  def import
    Product.import(params[:file])
    redirect_to root_url, notice: "Facturas importadas."
  end
  
  def new
  end

  def create
  end

  def show
    @product = Product.find(params[:id]);
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def enviar 
      redirect_to root_url, notice: "Facturas importadas."
  end

end

