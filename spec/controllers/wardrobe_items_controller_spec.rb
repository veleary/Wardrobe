require 'spec_helper'

describe WardrobeItemsController do

  let(:valid_attributes) { { "garment" => "boots" } }

  describe 'GET index' do
    it "assigns all wardrobe items as @wardrobe_items" do
      wardrobe_item = WardrobeItem.create valid_attributes
      get :index

      expect(assigns('wardrobe_items')).to eq([wardrobe_item])
    end
  end

  describe 'GET show' do
    it "assigns the requested wardrobe item as @wardrobe_item" do
      wardrobe_item = WardrobeItem.create valid_attributes
      get :show, { id: wardrobe_item.id }

      expect(assigns('wardrobe_item')).to eq(wardrobe_item)
    end
  end

  describe "GET new" do
    it "assigns a new wardrobe_item as @wardrobe_item" do
      get :new

      expect(assigns(:wardrobe_item)).to be_a_new(WardrobeItem)
    end
  end
end
