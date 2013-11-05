.class Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->onContentReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1218
    :try_start_0
    #v9=(Null);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v1}, Lcom/android/mail/ui/ConversationViewFragment;->access$500(Lcom/android/mail/ui/ConversationViewFragment;)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    const-wide/16 v3, 0x0

    #v3=(LongLo);v4=(LongHi);
    cmp-long v1, v1, v3

    #v1=(Byte);
    if-eqz v1, :cond_0

    .line 1219
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "IN CVF.onContentReady, f=%s vis=%s t=%sms"

    #v2=(Reference);
    const/4 v3, 0x3

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget-object v5, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v5, v5, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v5}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v5

    #v5=(Boolean);
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    iget-object v7, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v7=(Reference);
    iget-object v7, v7, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v7}, Lcom/android/mail/ui/ConversationViewFragment;->access$500(Lcom/android/mail/ui/ConversationViewFragment;)J

    move-result-wide v7

    #v7=(LongLo);v8=(LongHi);
    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1224
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v1}, Lcom/android/mail/ui/ConversationViewFragment;->access$800(Lcom/android/mail/ui/ConversationViewFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 1225
    :catch_0
    #v0=(Uninit);v1=(Conflicted);
    move-exception v0

    .line 1226
    .local v0, t:Ljava/lang/Throwable;
    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Error in MailJsBridge.onContentReady"

    #v2=(Reference);
    new-array v3, v9, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1228
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v1, v1, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v1}, Lcom/android/mail/ui/ConversationViewFragment;->access$800(Lcom/android/mail/ui/ConversationViewFragment;)V

    goto :goto_0
.end method
