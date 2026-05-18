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
        #expect(ListRowSpacing.contentInsets.top == 1)
        #expect(ListRowSpacing.contentInsets.bottom == 1)
        #expect(ListRowSpacing.contentInsets.leading == 12)
        #expect(ListRowSpacing.contentInsets.trailing == 10)
        #expect(ListRowSpacing.contentInsets.leading > ListRowSpacing.contentInsets.top)
    }

    @Test func panelsHaveMoreBreathingRoomThanInlineComponents() async throws
    {
        #expect(PanelPadding.card > BadgePadding.horizontal)
        #expect(PanelPadding.detail > PanelPadding.card)
        #expect(PanelPadding.message > PanelPadding.detail)
    }
}
