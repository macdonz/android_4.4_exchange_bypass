.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static addAction(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "action"

    .prologue
    .line 43
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 44
    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "child"

    .prologue
    .line 47
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public static getActions(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 57
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 61
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 62
    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 65
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 77
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 81
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 85
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 93
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 101
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 105
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 109
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 113
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 117
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 121
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 125
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 129
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 133
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 137
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter "source"

    .prologue
    .line 35
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 39
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 217
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 218
    return-void
.end method

.method public static setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 145
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 146
    return-void
.end method

.method public static setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 149
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 150
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "className"

    .prologue
    .line 161
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public static setClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "clickable"

    .prologue
    .line 165
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 166
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "contentDescription"

    .prologue
    .line 169
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "enabled"

    .prologue
    .line 173
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 174
    return-void
.end method

.method public static setFocusable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focusable"

    .prologue
    .line 177
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 178
    return-void
.end method

.method public static setFocused(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focused"

    .prologue
    .line 181
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 182
    return-void
.end method

.method public static setLongClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "longClickable"

    .prologue
    .line 185
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 186
    return-void
.end method

.method public static setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "packageName"

    .prologue
    .line 189
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "parent"

    .prologue
    .line 193
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "scrollable"

    .prologue
    .line 201
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 202
    return-void
.end method

.method public static setSelected(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "selected"

    .prologue
    .line 205
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 206
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "source"

    .prologue
    .line 209
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local p0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 210
    return-void
.end method
