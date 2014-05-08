class CustomersController < ApplicationController
  skip_before_filter :authorize, :only => [:new, :create]
  skip_before_filter :customerauthorize
  
  
  # GET /customers
  # GET /customers.xml
  def index
    @customers = Customer.all
    @events = Event.all
    @attractions = Attraction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.xml
  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.xml
  def new
    @events = Event.all
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.xml
  def create
    @events = Event.all
    
    if (params[:customer])
      @customer = Customer.new(params[:customer])
    else
      params[:customer] = {:name=>params[:name],
        :password_confirmation=>params[:password_confirmation],
        :phone=>params[:phone], :password=>params[:password], :email=>params[:email]}
      @customer = Customer.new(params[:customer])
    end

    respond_to do |format|
      if @customer.save
        format.html { redirect_to(main_url,
          :notice => "Customer #{@customer.name} was successfully created.") }
        format.xml  { render :xml => @customer,
          :status => :created, :location => @customer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @customer.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # PUT /customers/1
  # PUT /customers/1.xml
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to(customers_url,
          :notice => "Customer #{@customer.name} was successfully updated.") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @customer.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.xml
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to(customers_url) }
      format.xml  { head :ok }
    end
  end
end
