.class Landroid/support/v13/app/FragmentCompat$BaseFragmentCompatImpl;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseFragmentCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public setMenuVisibility(Landroid/app/Fragment;Z)V
    .locals 0
    .parameter "f"
    .parameter "visible"

    .prologue
    .line 33
    return-void
.end method

.method public setUserVisibleHint(Landroid/app/Fragment;Z)V
    .locals 0
    .parameter "f"
    .parameter "deferStart"

    .prologue
    .line 35
    return-void
.end method