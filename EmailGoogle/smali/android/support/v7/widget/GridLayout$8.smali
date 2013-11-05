.class final Landroid/support/v7/widget/GridLayout$8;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2656
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 1
    .parameter "view"
    .parameter "viewSize"
    .parameter "mode"

    .prologue
    .line 2664
    const/high16 v0, -0x8000

    #v0=(Integer);
    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    .line 2659
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getSizeInCell(Landroid/view/View;II)I
    .locals 0
    .parameter "view"
    .parameter "viewSize"
    .parameter "cellSize"

    .prologue
    .line 2669
    return p3
.end method
