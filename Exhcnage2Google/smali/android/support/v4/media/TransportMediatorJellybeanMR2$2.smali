.class Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->gainFocus()V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    #v0=(Uninit);
    iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$2;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->loseFocus()V

    goto :goto_0
.end method
