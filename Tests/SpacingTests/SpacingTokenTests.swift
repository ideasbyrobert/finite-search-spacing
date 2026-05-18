import Testing
@testable import Spacing

struct SpacingTokenTests
{
    @Test func stackSpacingProgressesFromTightTextToSections() async throws
    {
        #expect(StackSpacing.textLine < StackSpacing.tagGroup)
        #expect(StackSpacing.tagGroup < StackSpacing.compact)
        #expect(StackSpacing.compact < StackSpacing.standard)
        #expect(StackSpacing.standard < StackSpacing.metadata)
        #expect(StackSpacing.metadata < StackSpacing.section)
    }

    @Test func explicitValuesAreWholeNonnegativePoints() async throws
    {
        for value in SpacingValueFixture.allScalarValues
        {
            #expect(value >= 0)
            #expect(value.rounded() == value)
        }
    }

    @Test func automaticStackSpacingDefersToSwiftUIDefaultSpacing() async throws
    {
        #expect(StackSpacing.automatic == nil)
    }

    @Test func listRowInsetsStayCompactAndDirectional() async throws
    {
        #expect(ListRowSpacing.contentInsets.top == 2)
        #expect(ListRowSpacing.contentInsets.bottom == 2)
        #expect(ListRowSpacing.contentInsets.leading == 12)
        #expect(ListRowSpacing.contentInsets.trailing == 12)
        #expect(ListRowSpacing.contentInsets.leading > ListRowSpacing.contentInsets.top)
    }

    @Test func panelsHaveMoreBreathingRoomThanInlineComponents() async throws
    {
        #expect(PanelPadding.card > BadgePadding.horizontal)
        #expect(PanelPadding.detail > PanelPadding.card)
        #expect(PanelPadding.message > PanelPadding.detail)
    }

    @Test func filterControlDimensionsKeepCapsuleControlsStable() async throws
    {
        #expect(FilterControlDimensions.barHeight > FilterControlDimensions.slotHeight)
        #expect(FilterControlDimensions.dividerHeight < FilterControlDimensions.barHeight)
        #expect(FilterControlDimensions.dividerWidth < FilterControlDimensions.dividerHeight)
    }

    @Test func searchControlDimensionsKeepSearchFieldStable() async throws
    {
        #expect(SearchControlDimensions.fieldHeight > StateActionDimensions.buttonHeight)
    }

    @Test func stateActionButtonSizeReusesWidthAndHeightTokens() async throws
    {
        #expect(StateActionDimensions.buttonSize.width == StateActionDimensions.buttonWidth)
        #expect(StateActionDimensions.buttonSize.height == StateActionDimensions.buttonHeight)
    }

    @Test func sidebarDimensionsKeepTheSplitViewComfortable() async throws
    {
        #expect(SidebarDimensions.minimumWidth < SidebarDimensions.idealWidth)
        #expect(SidebarDimensions.idealWidth < SidebarDimensions.maximumWidth)
    }
}
