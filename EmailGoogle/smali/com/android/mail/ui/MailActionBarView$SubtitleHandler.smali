.class final Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;
.super Landroid/os/Handler;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubtitleHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/MailActionBarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/android/mail/ui/MailActionBarView;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/mail/ui/MailActionBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/android/mail/ui/MailActionBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/MailActionBarView;Lcom/android/mail/ui/MailActionBarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;-><init>(Lcom/android/mail/ui/MailActionBarView;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 117
    sget-boolean v1, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->$assertionsDisabled:Z

    #v1=(Boolean);
    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    #v1=(Integer);
    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #v1=(Reference);
    throw v1

    .line 119
    :cond_0
    #v1=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/android/mail/ui/MailActionBarView;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/MailActionBarView;->access$000(Lcom/android/mail/ui/MailActionBarView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/android/mail/ui/MailActionBarView;

    invoke-static {v1}, Lcom/android/mail/ui/MailActionBarView;->access$000(Lcom/android/mail/ui/MailActionBarView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iget-object v0, v1, Lcom/android/mail/providers/Account;->name:Ljava/lang/String;

    .line 126
    .local v0, subtitleText:Ljava/lang/String;
    :goto_0
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/MailActionBarView$SubtitleHandler;->this$0:Lcom/android/mail/ui/MailActionBarView;

    invoke-static {v1, v0}, Lcom/android/mail/ui/MailActionBarView;->access$100(Lcom/android/mail/ui/MailActionBarView;Ljava/lang/CharSequence;)V

    .line 127
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    return-void

    .line 123
    .end local v0           #subtitleText:Ljava/lang/String;
    :cond_1
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);
    const/4 v0, 0x0

    .line 124
    .restart local v0       #subtitleText:Ljava/lang/String;
    #v0=(Null);
    sget-object v1, Lcom/android/mail/ui/MailActionBarView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "MABV.handleMessage() has a null account!"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
