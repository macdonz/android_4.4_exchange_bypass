.class Lcom/android/mail/ui/AbstractConversationViewFragment$1;
.super Lcom/android/mail/providers/AccountObserver;
.source "AbstractConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractConversationViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0}, Lcom/android/mail/providers/AccountObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/mail/providers/Account;)V
    .locals 3
    .parameter "newAccount"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v1=(Reference);
    iget-object v0, v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 115
    .local v0, oldAccount:Lcom/android/mail/providers/Account;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    iput-object p1, v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    .line 116
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    iget-object v1, v1, Lcom/android/mail/ui/AbstractConversationViewFragment;->mWebViewClient:Lcom/android/mail/ui/AbstractConversationWebViewClient;

    iget-object v2, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractConversationViewFragment;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v2}, Lcom/android/mail/ui/AbstractConversationWebViewClient;->setAccount(Lcom/android/mail/providers/Account;)V

    .line 117
    iget-object v1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$1;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/mail/ui/AbstractConversationViewFragment;->onAccountChanged(Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V

    .line 118
    return-void
.end method
