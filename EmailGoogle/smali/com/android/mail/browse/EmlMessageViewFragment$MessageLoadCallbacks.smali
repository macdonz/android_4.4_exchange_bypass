.class Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;
.super Ljava/lang/Object;
.source "EmlMessageViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/EmlMessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoadCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/mail/browse/ConversationMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/EmlMessageViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/EmlMessageViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/EmlMessageViewFragment;Lcom/android/mail/browse/EmlMessageViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;-><init>(Lcom/android/mail/browse/EmlMessageViewFragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    .line 247
    :pswitch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    new-instance v0, Lcom/android/mail/browse/EmlMessageLoader;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/EmlMessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/EmlMessageViewFragment;->access$400(Lcom/android/mail/browse/EmlMessageViewFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/EmlMessageLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    #v0=(Reference);
    goto :goto_0

    .line 245
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/ConversationMessage;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;",
            "Lcom/android/mail/browse/ConversationMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/browse/ConversationMessage;>;"
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/EmlMessageViewFragment;->access$300(Lcom/android/mail/browse/EmlMessageViewFragment;)Lcom/android/mail/ui/SecureConversationViewController;

    move-result-object v0

    iget-object v1, p2, Lcom/android/mail/providers/Message;->subject:Ljava/lang/String;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/SecureConversationViewController;->setSubject(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->this$0:Lcom/android/mail/browse/EmlMessageViewFragment;

    invoke-static {v0}, Lcom/android/mail/browse/EmlMessageViewFragment;->access$300(Lcom/android/mail/browse/EmlMessageViewFragment;)Lcom/android/mail/ui/SecureConversationViewController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mail/ui/SecureConversationViewController;->renderMessage(Lcom/android/mail/browse/ConversationMessage;)V

    .line 257
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 241
    check-cast p2, Lcom/android/mail/browse/ConversationMessage;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/browse/EmlMessageViewFragment$MessageLoadCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/mail/browse/ConversationMessage;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/mail/browse/ConversationMessage;>;"
    return-void
.end method
