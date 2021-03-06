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

describe YouthsController do

  # This should return the minimal set of attributes required to create a valid
  # Youth. As you add validations to Youth, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "first_name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # YouthsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all youths as @youths" do
      youth = Youth.create! valid_attributes
      get :index, {}, valid_session
      assigns(:youths).should eq([youth])
    end
  end

  describe "GET show" do
    it "assigns the requested youth as @youth" do
      youth = Youth.create! valid_attributes
      get :show, {:id => youth.to_param}, valid_session
      assigns(:youth).should eq(youth)
    end
  end

  describe "GET new" do
    it "assigns a new youth as @youth" do
      get :new, {}, valid_session
      assigns(:youth).should be_a_new(Youth)
    end
  end

  describe "GET edit" do
    it "assigns the requested youth as @youth" do
      youth = Youth.create! valid_attributes
      get :edit, {:id => youth.to_param}, valid_session
      assigns(:youth).should eq(youth)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Youth" do
        expect {
          post :create, {:youth => valid_attributes}, valid_session
        }.to change(Youth, :count).by(1)
      end

      it "assigns a newly created youth as @youth" do
        post :create, {:youth => valid_attributes}, valid_session
        assigns(:youth).should be_a(Youth)
        assigns(:youth).should be_persisted
      end

      it "redirects to the created youth" do
        post :create, {:youth => valid_attributes}, valid_session
        response.should redirect_to(Youth.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved youth as @youth" do
        # Trigger the behavior that occurs when invalid params are submitted
        Youth.any_instance.stub(:save).and_return(false)
        post :create, {:youth => { "first_name" => "invalid value" }}, valid_session
        assigns(:youth).should be_a_new(Youth)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Youth.any_instance.stub(:save).and_return(false)
        post :create, {:youth => { "first_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested youth" do
        youth = Youth.create! valid_attributes
        # Assuming there are no other youths in the database, this
        # specifies that the Youth created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Youth.any_instance.should_receive(:update_attributes).with({ "first_name" => "MyString" })
        put :update, {:id => youth.to_param, :youth => { "first_name" => "MyString" }}, valid_session
      end

      it "assigns the requested youth as @youth" do
        youth = Youth.create! valid_attributes
        put :update, {:id => youth.to_param, :youth => valid_attributes}, valid_session
        assigns(:youth).should eq(youth)
      end

      it "redirects to the youth" do
        youth = Youth.create! valid_attributes
        put :update, {:id => youth.to_param, :youth => valid_attributes}, valid_session
        response.should redirect_to(youth)
      end
    end

    describe "with invalid params" do
      it "assigns the youth as @youth" do
        youth = Youth.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Youth.any_instance.stub(:save).and_return(false)
        put :update, {:id => youth.to_param, :youth => { "first_name" => "invalid value" }}, valid_session
        assigns(:youth).should eq(youth)
      end

      it "re-renders the 'edit' template" do
        youth = Youth.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Youth.any_instance.stub(:save).and_return(false)
        put :update, {:id => youth.to_param, :youth => { "first_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested youth" do
      youth = Youth.create! valid_attributes
      expect {
        delete :destroy, {:id => youth.to_param}, valid_session
      }.to change(Youth, :count).by(-1)
    end

    it "redirects to the youths list" do
      youth = Youth.create! valid_attributes
      delete :destroy, {:id => youth.to_param}, valid_session
      response.should redirect_to(youths_url)
    end
  end

end
