require "spec_helper"

describe "hide-visually" do
  before(:all) do
    ParserSupport.parse_file("library/hide-visually")
  end

  context "called on element" do
    it "adds properties to hide the element" do
      ruleset = "border: 0; " +
                "clip: rect(1px, 1px, 1px, 1px); " +
                "clip-path: inset(100%); " +
                "height: 1px; " +
                "overflow: hidden; " +
                "padding: 0; " +
                "position: absolute; " +
                "white-space: nowrap; " +
                "width: 1px;"

      expect(".hide-visually").to have_ruleset(ruleset)
    end
  end

  context "called with unhide argument" do
    it "adds properties to reverse the hiding of the element" do
      ruleset = "clip: auto; " +
                "clip-path: none; " +
                "height: auto; " +
                "overflow: visible; " +
                "position: static; " +
                "white-space: inherit; " +
                "width: auto;"

      expect(".hide-visually--unhide").to have_ruleset(ruleset)
    end
  end
end
