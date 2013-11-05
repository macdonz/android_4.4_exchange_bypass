.class public Lcom/android/mail/browse/MessageInviteView;
.super Landroid/widget/LinearLayout;
.source "MessageInviteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;
    }
.end annotation


# instance fields
.field private mCommandHandler:Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;

.field private final mContext:Landroid/content/Context;

.field private mMessage:Lcom/android/mail/providers/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 41
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MessageInviteView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;-><init>(Lcom/android/mail/browse/MessageInviteView;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MessageInviteView;->mCommandHandler:Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;

    .line 46
    iput-object p1, p0, Lcom/android/mail/browse/MessageInviteView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/mail/browse/MessageInviteView;)Lcom/android/mail/providers/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/browse/MessageInviteView;->mMessage:Lcom/android/mail/providers/Message;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public bind(Lcom/android/mail/providers/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mail/browse/MessageInviteView;->mMessage:Lcom/android/mail/providers/Message;

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 65
    #v6=(One);
    const/4 v0, 0x0

    .line 67
    .local v0, command:Ljava/lang/Integer;
    #v0=(Null);
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 69
    .local v1, id:I
    #v1=(Integer);
    const v4, 0x7f0800d5

    #v4=(Integer);
    if-ne v1, v4, :cond_2

    .line 70
    iget-object v4, p0, Lcom/android/mail/browse/MessageInviteView;->mMessage:Lcom/android/mail/providers/Message;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 71
    new-instance v2, Landroid/content/Intent;

    #v2=(UninitRef);
    const-string v4, "android.intent.action.VIEW"

    #v4=(Reference);
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/mail/browse/MessageInviteView;->mMessage:Lcom/android/mail/providers/Message;

    iget-object v4, v4, Lcom/android/mail/providers/Message;->eventIntentUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 73
    iget-object v4, p0, Lcom/android/mail/browse/MessageInviteView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    #v0=(Reference);v2=(Conflicted);v4=(Conflicted);
    if-eqz v0, :cond_1

    .line 84
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v3, params:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v4, "UnifiedEmail"

    #v4=(Reference);
    const-string v5, "SENDING INVITE COMMAND, VALUE=%s"

    #v5=(Reference);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    const-string v4, "respond"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    iget-object v4, p0, Lcom/android/mail/browse/MessageInviteView;->mCommandHandler:Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;

    invoke-virtual {v4, v3}, Lcom/android/mail/browse/MessageInviteView$InviteCommandHandler;->sendCommand(Landroid/content/ContentValues;)V

    .line 89
    .end local v3           #params:Landroid/content/ContentValues;
    :cond_1
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    return-void

    .line 75
    :cond_2
    #v0=(Null);v2=(Uninit);v3=(Uninit);v4=(Integer);v5=(Uninit);v6=(One);v7=(Uninit);
    const v4, 0x7f0800d6

    if-ne v1, v4, :cond_3

    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 77
    :cond_3
    #v0=(Null);
    const v4, 0x7f0800d7

    if-ne v1, v4, :cond_4

    .line 78
    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 79
    :cond_4
    #v0=(Null);v4=(Integer);
    const v4, 0x7f0800d8

    if-ne v1, v4, :cond_0

    .line 80
    const/4 v4, 0x3

    #v4=(PosByte);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0800d5

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0800d6

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0800d7

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0800d8

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/android/mail/browse/MessageInviteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
