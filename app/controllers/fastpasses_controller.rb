class FastpassesController < ApplicationController
  skip_before_filter :customerauthorize
  skip_before_filter :authorize, :only => [:create]
  
  # GET /fastpasses
  # GET /fastpasses.xml
  def index
    @fastpasses = Fastpass.all
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fastpasses }
    end
  end

  # GET /fastpasses/1
  # GET /fastpasses/1.xml
  def show
    @events = Event.all
    @fastpass = Fastpass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fastpass }
    end
  end

  # GET /fastpasses/new
  # GET /fastpasses/new.xml
  def new
    @events = Event.all
    @fastpass = Fastpass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fastpass }
    end
  end

  # GET /fastpasses/1/edit
  def edit
    @events = Event.all
    @fastpass = Fastpass.find(params[:id])
  end

  # POST /fastpasses
  # POST /fastpasses.xml
  def create
    @events = Event.all
    if (params[:fastpass])
      @fastpass = Fastpass.new(params[:fastpass])
    else
      @how_many = params[:how_many].to_i
      
      (1..@how_many).each do |i|
        params[:fastpass] = {:attractions_id=>params[:attractions_id],
          :hour=>params[:hour], :cust_id=>params[:cust_id], :is_used=>params[:is_used]}
        @fastpass = Fastpass.new(params[:fastpass])
        @fastpass.save
      end
    end


    respond_to do |format|
      if @fastpass.save
        format.html { redirect_to(@fastpass, :notice => 'Fastpass was successfully created.') }
        format.xml  { render :xml => @fastpass, :status => :created, :location => @fastpass }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fastpass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fastpasses/1
  # PUT /fastpasses/1.xml
  def update
    @events = Event.all
    @fastpass = Fastpass.find(params[:id])

    respond_to do |format|
      if @fastpass.update_attributes(params[:fastpass])
        format.html { redirect_to(@fastpass, :notice => 'Fastpass was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fastpass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fastpasses/1
  # DELETE /fastpasses/1.xml
  def destroy
    @events = Event.all
    @fastpass = Fastpass.find(params[:id])
    @fastpass.destroy

    respond_to do |format|
      format.html { redirect_to(fastpasses_url) }
      format.xml  { head :ok }
    end
  end
  
  def use
    @fastpass = Fastpass.find(session[:fp_id])
    @fastpass.is_used = 1
    @fastpass.save
    redirect_to(fastpasses_url)
  end
end
