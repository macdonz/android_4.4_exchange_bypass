.class final Lcom/android/mail/browse/SendersView$2;
.super Landroid/content/BroadcastReceiver;
.source "SendersView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/SendersView;->getSenderResources(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    const/4 v0, 0x0

    #v0=(Null);
    invoke-static {v0}, Lcom/android/mail/browse/SendersView;->access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 110
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {p1, v0}, Lcom/android/mail/browse/SendersView;->access$100(Landroid/content/Context;Z)V

    .line 111
    return-void
.end method
