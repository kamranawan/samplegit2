class PartyMembersController < ApplicationController
  before_action :set_party_member, only: [:show, :edit, :update, :destroy]

  # GET /party_members
  # GET /party_members.json
  def index
    @party_members = PartyMember.page(params[:page]).per(15)
  end

  # GET /party_members/1
  # GET /party_members/1.json
  def show
  end

  # GET /party_members/new
  def new
    @party_member = PartyMember.new
  end

  # GET /party_members/1/edit
  def edit
  end

  # POST /party_members
  # POST /party_members.json
  def create
    @party_member = PartyMember.new(party_member_params)

    respond_to do |format|
      if @party_member.save
        format.html { redirect_to @party_member, notice: 'Party member was successfully created.' }
        format.json { render :show, status: :created, location: @party_member }
      else
        format.html { render :new }
        format.json { render json: @party_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /party_members/1
  # PATCH/PUT /party_members/1.json
  def update
    respond_to do |format|
      if @party_member.update(party_member_params)
        format.html { redirect_to @party_member, notice: 'Party member was successfully updated.' }
        format.json { render :show, status: :ok, location: @party_member }
      else
        format.html { render :edit }
        format.json { render json: @party_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /party_members/1
  # DELETE /party_members/1.json
  def destroy
    @party_member.destroy
    respond_to do |format|
      format.html { redirect_to party_members_url, notice: 'Party member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_party_member
      @party_member = PartyMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def party_member_params
      params.require(:party_member).permit(:name, :phone_1, :phone_2, :cnic, :address, :avatar, :party_id)
    end
end
