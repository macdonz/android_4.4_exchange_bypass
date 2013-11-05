.class Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompatIcs$SupportActionExpandProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    #v0=(Reference);
    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl$1;->val$listener:Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;

    #v0=(Reference);
    invoke-interface {v0, p1}, Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
