.class Lcom/android/mail/ui/ConversationViewFragment$2;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$2;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 5

    .prologue
    .line 195
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "onProgressDismiss go() - isUserVisible() = %b"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$2;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v4

    #v4=(Boolean);
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$2;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->isUserVisible()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$2;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->onConversationSeen()V

    .line 199
    :cond_0
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$2;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationWebView;->onRenderComplete()V

    .line 200
    return-void
.end method
