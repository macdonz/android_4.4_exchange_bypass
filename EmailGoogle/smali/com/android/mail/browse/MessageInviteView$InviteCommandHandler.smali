.class Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MessageInviteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/MessageInviteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteCommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/MessageInviteView;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/MessageInviteView;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;->this$0:Lcom/android/mail/browse/MessageInviteView;

    .line 94
    invoke-virtual {p1}, Lcom/android/mail/browse/MessageInviteView;->getContext()Landroid/content/Context;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 95
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public sendCommand(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 98
    #v2=(Null);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;->this$0:Lcom/android/mail/browse/MessageInviteView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/MessageInviteView;->access$000(Lcom/android/mail/browse/MessageInviteView;)Lcom/android/mail/providers/Message;

    move-result-object v0

    iget-object v3, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    #v3=(Reference);
    move-object v0, p0

    move-object v4, p1

    #v4=(Reference);
    move-object v5, v2

    #v5=(Null);
    move-object v6, v2

    #v6=(Null);
    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    return-void
.end method
