class EncounterEventMiscellaneousConditionsController < ApplicationController
  # GET /encounter_event_miscellaneous_conditions
  # GET /encounter_event_miscellaneous_conditions.xml
  def index
    @encounter_event_miscellaneous_conditions = EncounterEventMiscellaneousCondition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encounter_event_miscellaneous_conditions }
    end
  end

  # GET /encounter_event_miscellaneous_conditions/1
  # GET /encounter_event_miscellaneous_conditions/1.xml
  def show
    @encounter_event_miscellaneous_condition = EncounterEventMiscellaneousCondition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encounter_event_miscellaneous_condition }
    end
  end

  # GET /encounter_event_miscellaneous_conditions/new
  # GET /encounter_event_miscellaneous_conditions/new.xml
  def new
    @encounter_event_miscellaneous_condition = EncounterEventMiscellaneousCondition.new
    @encounter_event_miscellaneous_condition.encounter_event_id = params[:encounter_event_id]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encounter_event_miscellaneous_condition }
    end
  end

  # GET /encounter_event_miscellaneous_conditions/1/edit
  def edit
    @encounter_event_miscellaneous_condition = EncounterEventMiscellaneousCondition.find(params[:id])
  end

  # POST /encounter_event_miscellaneous_conditions
  # POST /encounter_event_miscellaneous_conditions.xml
  def create
    @encounter_event_miscellaneous_condition = EncounterEventMiscellaneousCondition.new(params[:encounter_event_miscellaneous_condition])
    
    respond_to do |format|
      if @encounter_event_miscellaneous_condition.save
        format.html { redirect_to(@encounter_event_miscellaneous_condition, :notice => 'Encounter event miscellaneous condition was successfully created.') }
        format.xml  { render :xml => @encounter_event_miscellaneous_condition, :status => :created, :location => @encounter_event_miscellaneous_condition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encounter_event_miscellaneous_condition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encounter_event_miscellaneous_conditions/1
  # PUT /encounter_event_miscellaneous_conditions/1.xml
  def update
    @encounter_event_miscellaneous_condition = EncounterEventMiscellaneousCondition.find(params[:id])

    respond_to do |format|
      if @encounter_event_miscellaneous_condition.update_attributes(params[:encounter_event_miscellaneous_condition])
        format.html { redirect_to(@encounter_event_miscellaneous_condition, :notice => 'Encounter event miscellaneous condition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encounter_event_miscellaneous_condition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_event_miscellaneous_conditions/1
  # DELETE /encounter_event_miscellaneous_conditions/1.xml
  def destroy
    @encounter_event_miscellaneous_condition = EncounterEventMiscellaneousCondition.find(params[:id])
    @encounter_event_miscellaneous_condition.destroy

    respond_to do |format|
      format.html { redirect_to(encounter_event_miscellaneous_conditions_url) }
      format.xml  { head :ok }
    end
  end
end
