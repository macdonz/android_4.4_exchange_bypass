.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatJellybeanMR2Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1
    .parameter "group"

    .prologue
    .line 94
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompatJellybeanMR2;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
