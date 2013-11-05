.class Lcom/android/mail/ui/ConversationViewFragment$6;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"

# interfaces
.implements Lcom/android/mail/browse/MailWebView$ContentSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewFragment;->ensureContentSizeChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$6;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onHeightChange(I)V
    .locals 2
    .parameter "h"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$6;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment;->mWebView:Lcom/android/mail/browse/ConversationWebView;

    const-string v1, "javascript:measurePositions();"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/ConversationWebView;->loadUrl(Ljava/lang/String;)V

    .line 1030
    return-void
.end method
