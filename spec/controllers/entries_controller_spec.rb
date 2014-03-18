require 'spec_helper'

describe EntriesController do

  # This should return the minimal set of attributes required to create a valid
  # Entry. As you add validations to Entry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "word" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EntriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all entries as @entries" do
      entry = Entry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:entries).should eq([entry])
    end
  end

  describe "GET show" do
    it "assigns the requested entry as @entry" do
      entry = Entry.create! valid_attributes
      get :show, {:id => entry.to_param}, valid_session
      assigns(:entry).should eq(entry)
    end
  end

  describe "GET new" do
    it "assigns a new entry as @entry" do
      get :new, {}, valid_session
      assigns(:entry).should be_a_new(Entry)
    end
  end

  describe "GET edit" do
    it "assigns the requested entry as @entry" do
      entry = Entry.create! valid_attributes
      get :edit, {:id => entry.to_param}, valid_session
      assigns(:entry).should eq(entry)
    end
  end

  describe "POST create" do
    describe "with a valid entry" do
      context "when a definition for the entry exists in the database" do
        it "returns the definition" do

        end
      end

      context "when NO definition for the entry exists in the database" do
        xit "calls the dictionary api" do

        end
      end
    end

    describe "with an invalid entry" do
      xit "handles the situation" do

      end
    end

    #describe "with valid params" do
    #  it "creates a new Entry" do
    #    expect {
    #      post :create, {:entry => valid_attributes}, valid_session
    #    }.to change(Entry, :count).by(1)
    #  end
    #
    #  it "assigns a newly created entry as @entry" do
    #    post :create, {:entry => valid_attributes}, valid_session
    #    assigns(:entry).should be_a(Entry)
    #    assigns(:entry).should be_persisted
    #  end
    #
    #  it "redirects to the created entry" do
    #    post :create, {:entry => valid_attributes}, valid_session
    #    response.should redirect_to(Entry.last)
    #  end
    #end
    #
    #describe "with invalid params" do
    #  it "assigns a newly created but unsaved entry as @entry" do
    #    # Trigger the behavior that occurs when invalid params are submitted
    #    Entry.any_instance.stub(:save).and_return(false)
    #    post :create, {:entry => { "word" => "invalid value" }}, valid_session
    #    assigns(:entry).should be_a_new(Entry)
    #  end
    #
    #  it "re-renders the 'new' template" do
    #    # Trigger the behavior that occurs when invalid params are submitted
    #    Entry.any_instance.stub(:save).and_return(false)
    #    post :create, {:entry => { "word" => "invalid value" }}, valid_session
    #    response.should render_template("new")
    #  end
    #end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested entry" do
        entry = Entry.create! valid_attributes
        # Assuming there are no other entries in the database, this
        # specifies that the Entry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Entry.any_instance.should_receive(:update).with({ "word" => "MyString" })
        put :update, {:id => entry.to_param, :entry => { "word" => "MyString" }}, valid_session
      end

      it "assigns the requested entry as @entry" do
        entry = Entry.create! valid_attributes
        put :update, {:id => entry.to_param, :entry => valid_attributes}, valid_session
        assigns(:entry).should eq(entry)
      end

      it "redirects to the entry" do
        entry = Entry.create! valid_attributes
        put :update, {:id => entry.to_param, :entry => valid_attributes}, valid_session
        response.should redirect_to(entry)
      end
    end

    describe "with invalid params" do
      it "assigns the entry as @entry" do
        entry = Entry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Entry.any_instance.stub(:save).and_return(false)
        put :update, {:id => entry.to_param, :entry => { "word" => "invalid value" }}, valid_session
        assigns(:entry).should eq(entry)
      end

      it "re-renders the 'edit' template" do
        entry = Entry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Entry.any_instance.stub(:save).and_return(false)
        put :update, {:id => entry.to_param, :entry => { "word" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested entry" do
      entry = Entry.create! valid_attributes
      expect {
        delete :destroy, {:id => entry.to_param}, valid_session
      }.to change(Entry, :count).by(-1)
    end

    it "redirects to the entries list" do
      entry = Entry.create! valid_attributes
      delete :destroy, {:id => entry.to_param}, valid_session
      response.should redirect_to(entries_url)
    end
  end

end
