.class Landroid/support/v4/view/ViewParentCompat$ViewParentCompatICSImpl;
.super Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatICSImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "parent"
    .parameter "child"
    .parameter "event"

    .prologue
    .line 56
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewParentCompatICS;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method