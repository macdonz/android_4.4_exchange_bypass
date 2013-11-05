.class public interface abstract Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;
.super Ljava/lang/Object;
.source "SecureConversationViewControllerCallbacks.java"


# virtual methods
.method public abstract getAccountUri()Landroid/net/Uri;
.end method

.method public abstract getAddressCache()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/providers/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBaseUri()Ljava/lang/String;
.end method

.method public abstract getContactInfoSource()Lcom/android/mail/ContactInfoSource;
.end method

.method public abstract getConversationAccountController()Lcom/android/mail/browse/ConversationAccountController;
.end method

.method public abstract getFragment()Landroid/app/Fragment;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getWebViewClient()Lcom/android/mail/ui/AbstractConversationWebViewClient;
.end method

.method public abstract isViewOnlyMode()Z
.end method

.method public abstract isViewVisibleToUser()Z
.end method

.method public abstract setupConversationHeaderView(Lcom/android/mail/browse/ConversationViewHeader;)V
.end method

.method public abstract setupMessageHeaderVeiledMatcher(Lcom/android/mail/browse/MessageHeaderView;)V
.end method

.method public abstract startMessageLoader()V
.end method
