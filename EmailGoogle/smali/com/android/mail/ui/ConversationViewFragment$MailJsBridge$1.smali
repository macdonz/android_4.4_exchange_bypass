.class Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->onWebContentGeometryChange([Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

.field final synthetic val$overlayBottomStrs:[Ljava/lang/String;

.field final synthetic val$overlayTopStrs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iput-object p4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayTopStrs:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayBottomStrs:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v7, 0x0

    .line 1121
    :try_start_0
    #v7=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v2, v2, Lcom/android/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    #v2=(Boolean);
    if-nez v2, :cond_1

    .line 1122
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "ignoring webContentGeometryChange because views are gone, %s"

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    iget-object v6, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1139
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Conflicted);
    return-void

    .line 1126
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);v5=(One);v6=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment;->mConversationContainer:Lcom/android/mail/browse/ConversationContainer;

    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayTopStrs:[Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->val$overlayBottomStrs:[Ljava/lang/String;

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/android/mail/ui/ConversationViewFragment;->access$900([Ljava/lang/String;[Ljava/lang/String;)[Lcom/android/mail/browse/ConversationContainer$OverlayPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/browse/ConversationContainer;->onGeometryChange([Lcom/android/mail/browse/ConversationContainer$OverlayPosition;)V

    .line 1128
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v2}, Lcom/android/mail/ui/ConversationViewFragment;->access$1000(Lcom/android/mail/ui/ConversationViewFragment;)I

    move-result v2

    #v2=(Integer);
    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v2}, Lcom/android/mail/browse/ConversationWebView;->getScale()F

    move-result v2

    #v2=(Float);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v3, v3, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v3, v3, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v3}, Lcom/android/mail/browse/ConversationWebView;->getInitialScale()F

    move-result v3

    #v3=(Float);
    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 1131
    .local v0, scale:I
    #v0=(Integer);
    if-le v0, v5, :cond_2

    .line 1132
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    iget-object v4, v4, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v4}, Lcom/android/mail/ui/ConversationViewFragment;->access$1000(Lcom/android/mail/ui/ConversationViewFragment;)I

    move-result v4

    #v4=(Integer);
    add-int/lit8 v5, v0, -0x1

    #v5=(Integer);
    mul-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mail/browse/ConversationWebView;->scrollBy(II)V

    .line 1134
    :cond_2
    #v2=(Conflicted);v3=(Float);v4=(Conflicted);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v2, v3}, Lcom/android/mail/ui/ConversationViewFragment;->access$1002(Lcom/android/mail/ui/ConversationViewFragment;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1136
    .end local v0           #scale:I
    :catch_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);
    move-exception v1

    .line 1137
    .local v1, t:Ljava/lang/Throwable;
    #v1=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "Error in MailJsBridge.onWebContentGeometryChange"

    #v3=(Reference);
    new-array v4, v7, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
