.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatJellyBean.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "record"
    .parameter "root"
    .parameter "virtualDescendantId"

    .prologue
    .line 28
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    .end local p0
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 29
    return-void
.end method