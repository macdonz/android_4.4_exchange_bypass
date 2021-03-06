.class public abstract Landroid/support/v4/media/TransportPerformer;
.super Ljava/lang/Object;
.source "TransportPerformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 8
    .parameter "focusChange"

    .prologue
    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, keyCode:I
    #v6=(Null);
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    #v6=(PosByte);
    if-eqz v6, :cond_0

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 198
    .local v1, now:J
    #v1=(LongLo);v2=(LongHi);
    new-instance v0, Landroid/view/KeyEvent;

    #v0=(UninitRef);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-wide v3, v1

    #v3=(LongLo);v4=(LongHi);
    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    #v0=(Reference);
    invoke-virtual {p0, v6, v0}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonDown(ILandroid/view/KeyEvent;)Z

    .line 199
    new-instance v0, Landroid/view/KeyEvent;

    #v0=(UninitRef);
    const/4 v5, 0x1

    #v5=(One);
    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    #v0=(Reference);
    invoke-virtual {p0, v6, v0}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonUp(ILandroid/view/KeyEvent;)Z

    .line 201
    .end local v1           #now:J
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);
    return-void

    .line 193
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Null);v7=(Uninit);
    const/16 v6, 0x7f

    #v6=(PosByte);
    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onGetCurrentPosition()J
.end method

.method public abstract onIsPlaying()Z
.end method

.method public onMediaButtonDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 127
    #v1=(One);
    sparse-switch p1, :sswitch_data_0

    .line 145
    :goto_0
    #v0=(Conflicted);
    return v1

    .line 129
    :sswitch_0
    #v0=(Uninit);
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    goto :goto_0

    .line 139
    :sswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    goto :goto_0

    .line 127
    #v0=(Unknown);v1=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_2
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaButtonUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 164
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public abstract onPause()V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
