# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Apartments" do
    describe "Admin" do
      describe "apartments", type: :feature do

        refinery_login_with :refinery_user


        describe "apartments list" do
          before do
            FactoryGirl.create(:apartment, :block => "UniqueTitleOne")
            FactoryGirl.create(:apartment, :block => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.apartments_admin_apartments_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.apartments_admin_apartments_path

            click_link "Add New Apartment"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Block", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::Apartments::Apartment, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::Apartments::Apartment, :count)

              expect(page).to have_content("Block can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:apartment, :block => "UniqueTitle") }

            it "should fail" do
              visit refinery.apartments_admin_apartments_path

              click_link "Add New Apartment"

              fill_in "Block", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::Apartments::Apartment, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:apartment, :block => "A block") }

          it "should succeed" do
            visit refinery.apartments_admin_apartments_path

            within ".actions" do
              click_link "Edit this apartment"
            end

            fill_in "Block", :with => "A different block"
            click_button "Save"

            expect(page).to have_content("'A different block' was successfully updated.")
            expect(page).not_to have_content("A block")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:apartment, :block => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.apartments_admin_apartments_path

            click_link "Remove this apartment forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Apartments::Apartment.count).to eq(0)
          end
        end

      end
    end
  end
end
