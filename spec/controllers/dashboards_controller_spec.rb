require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe DashboardsController do

  # This should return the minimal set of attributes required to create a valid
  # Dashboard. As you add validations to Dashboard, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DashboardsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all dashboards as @dashboards" do
      dashboard = Dashboard.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dashboards).should eq([dashboard])
    end
  end

  describe "GET show" do
    it "assigns the requested dashboard as @dashboard" do
      dashboard = Dashboard.create! valid_attributes
      get :show, {:id => dashboard.to_param}, valid_session
      assigns(:dashboard).should eq(dashboard)
    end
  end

  describe "GET new" do
    it "assigns a new dashboard as @dashboard" do
      get :new, {}, valid_session
      assigns(:dashboard).should be_a_new(Dashboard)
    end
  end

  describe "GET edit" do
    it "assigns the requested dashboard as @dashboard" do
      dashboard = Dashboard.create! valid_attributes
      get :edit, {:id => dashboard.to_param}, valid_session
      assigns(:dashboard).should eq(dashboard)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dashboard" do
        expect {
          post :create, {:dashboard => valid_attributes}, valid_session
        }.to change(Dashboard, :count).by(1)
      end

      it "assigns a newly created dashboard as @dashboard" do
        post :create, {:dashboard => valid_attributes}, valid_session
        assigns(:dashboard).should be_a(Dashboard)
        assigns(:dashboard).should be_persisted
      end

      it "redirects to the created dashboard" do
        post :create, {:dashboard => valid_attributes}, valid_session
        response.should redirect_to(Dashboard.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dashboard as @dashboard" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard.any_instance.stub(:save).and_return(false)
        post :create, {:dashboard => {  }}, valid_session
        assigns(:dashboard).should be_a_new(Dashboard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard.any_instance.stub(:save).and_return(false)
        post :create, {:dashboard => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dashboard" do
        dashboard = Dashboard.create! valid_attributes
        # Assuming there are no other dashboards in the database, this
        # specifies that the Dashboard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dashboard.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => dashboard.to_param, :dashboard => { "these" => "params" }}, valid_session
      end

      it "assigns the requested dashboard as @dashboard" do
        dashboard = Dashboard.create! valid_attributes
        put :update, {:id => dashboard.to_param, :dashboard => valid_attributes}, valid_session
        assigns(:dashboard).should eq(dashboard)
      end

      it "redirects to the dashboard" do
        dashboard = Dashboard.create! valid_attributes
        put :update, {:id => dashboard.to_param, :dashboard => valid_attributes}, valid_session
        response.should redirect_to(dashboard)
      end
    end

    describe "with invalid params" do
      it "assigns the dashboard as @dashboard" do
        dashboard = Dashboard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard.any_instance.stub(:save).and_return(false)
        put :update, {:id => dashboard.to_param, :dashboard => {  }}, valid_session
        assigns(:dashboard).should eq(dashboard)
      end

      it "re-renders the 'edit' template" do
        dashboard = Dashboard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dashboard.any_instance.stub(:save).and_return(false)
        put :update, {:id => dashboard.to_param, :dashboard => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dashboard" do
      dashboard = Dashboard.create! valid_attributes
      expect {
        delete :destroy, {:id => dashboard.to_param}, valid_session
      }.to change(Dashboard, :count).by(-1)
    end

    it "redirects to the dashboards list" do
      dashboard = Dashboard.create! valid_attributes
      delete :destroy, {:id => dashboard.to_param}, valid_session
      response.should redirect_to(dashboards_url)
    end
  end

end
