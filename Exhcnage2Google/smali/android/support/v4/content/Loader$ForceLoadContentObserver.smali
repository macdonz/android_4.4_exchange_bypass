.class public final Landroid/support/v4/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/Loader;


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 58
    .local p0, this:Landroid/support/v4/content/Loader$ForceLoadContentObserver;,"Landroid/support/v4/content/Loader<TD;>.ForceLoadContentObserver;"
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 63
    .local p0, this:Landroid/support/v4/content/Loader$ForceLoadContentObserver;,"Landroid/support/v4/content/Loader<TD;>.ForceLoadContentObserver;"
    iget-object v0, p0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;->this$0:Landroid/support/v4/content/Loader;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 64
    return-void
.end method
