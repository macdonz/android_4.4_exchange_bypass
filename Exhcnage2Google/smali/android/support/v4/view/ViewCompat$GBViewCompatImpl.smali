.class Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$EclairMr1ViewCompatImpl;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 376
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatGingerbread;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method