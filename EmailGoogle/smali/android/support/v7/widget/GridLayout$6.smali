.class final Landroid/support/v7/widget/GridLayout$6;
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
    .line 2581
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
    .line 2589
    shr-int/lit8 v0, p2, 0x1

    #v0=(Integer);
    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .locals 1
    .parameter "view"
    .parameter "cellDelta"

    .prologue
    .line 2584
    shr-int/lit8 v0, p2, 0x1

    #v0=(Integer);
    return v0
.end method