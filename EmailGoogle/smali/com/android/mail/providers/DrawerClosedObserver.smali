.class public abstract Lcom/android/mail/providers/DrawerClosedObserver;
.super Landroid/database/DataSetObserver;
.source "DrawerClosedObserver.java"


# instance fields
.field private mController:Lcom/android/mail/ui/AccountController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 37
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/mail/ui/AccountController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mail/providers/DrawerClosedObserver;->mController:Lcom/android/mail/ui/AccountController;

    .line 47
    iget-object v0, p0, Lcom/android/mail/providers/DrawerClosedObserver;->mController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    invoke-interface {v0, p0}, Lcom/android/mail/ui/AccountController;->registerDrawerClosedObserver(Landroid/database/DataSetObserver;)V

    .line 48
    return-void
.end method

.method public final onChanged()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/providers/DrawerClosedObserver;->mController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/mail/providers/DrawerClosedObserver;->onDrawerClosed()V

    .line 61
    :cond_0
    return-void
.end method

.method public abstract onDrawerClosed()V
.end method

.method public unregisterAndDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mail/providers/DrawerClosedObserver;->mController:Lcom/android/mail/ui/AccountController;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/mail/providers/DrawerClosedObserver;->mController:Lcom/android/mail/ui/AccountController;

    invoke-interface {v0, p0}, Lcom/android/mail/ui/AccountController;->unregisterDrawerClosedObserver(Landroid/database/DataSetObserver;)V

    .line 70
    :cond_0
    return-void
.end method
