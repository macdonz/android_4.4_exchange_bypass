.class public Landroid/support/v4/media/TransportMediator;
.super Landroid/support/v4/media/TransportController;
.source "TransportMediator.java"


# instance fields
.field final mCallbacks:Landroid/support/v4/media/TransportPerformer;

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;


# direct methods
.method static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 112
    sparse-switch p0, :sswitch_data_0

    .line 127
    const/4 v0, 0x0

    :goto_0
    #v0=(Boolean);
    return v0

    .line 124
    :sswitch_0
    #v0=(Uninit);
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 112
    #v0=(Unknown);p0=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method
