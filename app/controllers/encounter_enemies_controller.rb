class EncounterEnemiesController < ApplicationController
  # GET /encounter_enemies
  # GET /encounter_enemies.xml
  def index
    @encounter_enemies = EncounterEnemy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @encounter_enemies }
    end
  end

  # GET /encounter_enemies/1
  # GET /encounter_enemies/1.xml
  def show
    @encounter_enemy = EncounterEnemy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @encounter_enemy }
    end
  end

  # GET /encounter_enemies/new
  # GET /encounter_enemies/new.xml
  def new
    @encounter_enemy = EncounterEnemy.new
    @encounter_enemy.encounter_id = params[:encounter_id]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @encounter_enemy }
    end
  end

  # GET /encounter_enemies/1/edit
  def edit
    @encounter_enemy = EncounterEnemy.find(params[:id])
  end

  # POST /encounter_enemies
  # POST /encounter_enemies.xml
  def create
    @encounter_enemy = EncounterEnemy.new(params[:encounter_enemy])

    respond_to do |format|
      if @encounter_enemy.save
        format.html { redirect_to(@encounter_enemy.encounter.adventure, :notice => 'Encounter enemy was successfully created.') }
        format.xml  { render :xml => @encounter_enemy, :status => :created, :location => @encounter_enemy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @encounter_enemy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /encounter_enemies/1
  # PUT /encounter_enemies/1.xml
  def update
    @encounter_enemy = EncounterEnemy.find(params[:id])

    respond_to do |format|
      if @encounter_enemy.update_attributes(params[:encounter_enemy])
        format.html { redirect_to(@encounter_enemy, :notice => 'Encounter enemy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @encounter_enemy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /encounter_enemies/1
  # DELETE /encounter_enemies/1.xml
  def destroy
    @encounter_enemy = EncounterEnemy.find(params[:id])
    @encounter_enemy.destroy

    respond_to do |format|
      format.html { redirect_to(encounter_enemies_url) }
      format.xml  { head :ok }
    end
  end
end
