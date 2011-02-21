class EncounterAreaFeaturesController < ApplicationController
  # GET /encounter_area_features
  # GET /encounter_area_features.xml
  def index
    @encounter_area_features = EncounterAreaFeature.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encounter_area_features }
    end
  end

  # GET /encounter_area_features/1
  # GET /encounter_area_features/1.xml
  def show
    @encounter_area_feature = EncounterAreaFeature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encounter_area_feature }
    end
  end

  # GET /encounter_area_features/new
  # GET /encounter_area_features/new.xml
  def new
    @encounter_area_feature = EncounterAreaFeature.new
    @encounter_area_feature.encounter_id = params[:encounter_id]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encounter_area_feature }
    end
  end

  # GET /encounter_area_features/1/edit
  def edit
    @encounter_area_feature = EncounterAreaFeature.find(params[:id])
  end

  # POST /encounter_area_features
  # POST /encounter_area_features.xml
  def create
    @encounter_area_feature = EncounterAreaFeature.new(params[:encounter_area_feature])

    respond_to do |format|
      if @encounter_area_feature.save
        format.html { redirect_to(@encounter_area_feature.encounter.adventure, :notice => 'Encounter area feature was successfully created.') }
        format.xml  { render :xml => @encounter_area_feature, :status => :created, :location => @encounter_area_feature }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encounter_area_feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encounter_area_features/1
  # PUT /encounter_area_features/1.xml
  def update
    @encounter_area_feature = EncounterAreaFeature.find(params[:id])

    respond_to do |format|
      if @encounter_area_feature.update_attributes(params[:encounter_area_feature])
        format.html { redirect_to(@encounter_area_feature, :notice => 'Encounter area feature was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encounter_area_feature.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_area_features/1
  # DELETE /encounter_area_features/1.xml
  def destroy
    @encounter_area_feature = EncounterAreaFeature.find(params[:id])
    @encounter_area_feature.destroy

    respond_to do |format|
      format.html { redirect_to(encounter_area_features_url) }
      format.xml  { head :ok }
    end
  end
end
