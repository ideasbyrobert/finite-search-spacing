import CoreGraphics
@testable import Spacing

enum SpacingValueFixture
{
    static let stackValues: [CGFloat] =
    [
        StackSpacing.textLine,
        StackSpacing.tagGroup,
        StackSpacing.compact,
        StackSpacing.standard,
        StackSpacing.metadata,
        StackSpacing.section
    ]

    static let paddingValues: [CGFloat] =
    [
        TagPadding.horizontal,
        TagPadding.vertical,
        BadgePadding.horizontal,
        BadgePadding.vertical,
        PanelPadding.card,
        PanelPadding.detail,
        PanelPadding.message,
        ListRowSpacing.verticalPadding,
        ListRowSpacing.selectionHorizontalPadding
    ]

    static let radiusValues: [CGFloat] =
    [
        CornerRadius.selection,
        CornerRadius.badge,
        CornerRadius.card
    ]

    static let widthValues: [CGFloat] =
    [
        ContentWidth.detail,
        ContentWidth.message,
        ControlDimensions.filterDividerWidth,
        ControlDimensions.stateActionButtonWidth,
        ControlDimensions.shortcutCaptureSize
    ]

    static let heightValues: [CGFloat] =
    [
        ControlDimensions.filterBarHeight,
        ControlDimensions.filterSlotHeight,
        ControlDimensions.filterDividerHeight,
        ControlDimensions.searchFieldHeight,
        ControlDimensions.stateActionButtonHeight
    ]

    static var allScalarValues: [CGFloat]
    {
        stackValues + paddingValues + radiusValues + widthValues + heightValues
    }
}
