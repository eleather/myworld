class EncounterEventsController < ApplicationController
  # GET /encounter_events
  # GET /encounter_events.xml
  def index
    @encounter_events = EncounterEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encounter_events }
    end
  end

  # GET /encounter_events/1
  # GET /encounter_events/1.xml
  def show
    @encounter_event = EncounterEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encounter_event }
    end
  end

  # GET /encounter_events/new
  # GET /encounter_events/new.xml
  def new
    @encounter_event = EncounterEvent.new
    @encounter_event.encounter_id = params[:encounter_id]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encounter_event }
    end
  end

  # GET /encounter_events/1/edit
  def edit
    @encounter_event = EncounterEvent.find(params[:id])
  end

  # POST /encounter_events
  # POST /encounter_events.xml
  def create
    @encounter_event = EncounterEvent.new(params[:encounter_event])

    respond_to do |format|
      if @encounter_event.save
        format.html { redirect_to(@encounter_event.encounter.adventure, :notice => 'Encounter event was successfully created.') }
        format.xml  { render :xml => @encounter_event, :status => :created, :location => @encounter_event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encounter_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encounter_events/1
  # PUT /encounter_events/1.xml
  def update
    @encounter_event = EncounterEvent.find(params[:id])

    respond_to do |format|
      if @encounter_event.update_attributes(params[:encounter_event])
        format.html { redirect_to(@encounter_event, :notice => 'Encounter event was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encounter_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_events/1
  # DELETE /encounter_events/1.xml
  def destroy
    @encounter_event = EncounterEvent.find(params[:id])
    @encounter_event.destroy

    respond_to do |format|
      format.html { redirect_to(encounter_events_url) }
      format.xml  { head :ok }
    end
  end
  
  # GET /encounter_events/1/new_encounter_event_condition
  # TODO: GET /encounter_events/1/new_encounter_event_condition.xml
  def new_encounter_event_condition
    @encounter_event = EncounterEvent.find(params[:encounter_event_id])
    
    respond_to do |format|
      format.html # new_encounter_event_condition.haml
    end
  end
end
