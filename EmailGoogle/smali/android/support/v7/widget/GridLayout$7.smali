.class final Landroid/support/v7/widget/GridLayout$7;
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
    .line 2600
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .locals 3
    .parameter "view"
    .parameter "viewSize"
    .parameter "mode"

    .prologue
    .line 2608
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x8

    #v2=(PosByte);
    if-ne v1, v2, :cond_1

    .line 2609
    const/4 v0, 0x0

    .line 2612
    :cond_0
    :goto_0
    #v0=(Integer);
    return v0

    .line 2611
    :cond_1
    #v0=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2612
    .local v0, baseline:I
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_0

    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
    .locals 1

    .prologue
    .line 2617
    new-instance v0, Landroid/support/v7/widget/GridLayout$7$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Landroid/support/v7/widget/GridLayout$7$1;-><init>(Landroid/support/v7/widget/GridLayout$7;)V

    #v0=(Reference);
    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    .line 2603
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method
