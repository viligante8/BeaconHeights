class AmberAlertsController < ApplicationController
  skip_before_filter :customerauthorize
  
  # GET /amber_alerts
  # GET /amber_alerts.xml
  def index
    @amber_alerts = AmberAlert.all
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @amber_alerts }
    end
  end

  # GET /amber_alerts/1
  # GET /amber_alerts/1.xml
  def show
    @amber_alert = AmberAlert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @amber_alert }
    end
  end

  # GET /amber_alerts/new
  # GET /amber_alerts/new.xml
  def new
    @amber_alert = AmberAlert.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @amber_alert }
    end
  end

  # GET /amber_alerts/1/edit
  def edit
    @amber_alert = AmberAlert.find(params[:id])
  end

  # POST /amber_alerts
  # POST /amber_alerts.xml
  def create
    @amber_alert = AmberAlert.new(params[:amber_alert])

    respond_to do |format|
      if @amber_alert.save
        format.html { redirect_to(@amber_alert, :notice => 'Amber alert was successfully created.') }
        format.xml  { render :xml => @amber_alert, :status => :created, :location => @amber_alert }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @amber_alert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /amber_alerts/1
  # PUT /amber_alerts/1.xml
  def update
    @amber_alert = AmberAlert.find(params[:id])

    respond_to do |format|
      if @amber_alert.update_attributes(params[:amber_alert])
        format.html { redirect_to(@amber_alert, :notice => 'Amber alert was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @amber_alert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /amber_alerts/1
  # DELETE /amber_alerts/1.xml
  def destroy
    @amber_alert = AmberAlert.find(params[:id])
    @amber_alert.destroy

    respond_to do |format|
      format.html { redirect_to(amber_alerts_url) }
      format.xml  { head :ok }
    end
  end
end
