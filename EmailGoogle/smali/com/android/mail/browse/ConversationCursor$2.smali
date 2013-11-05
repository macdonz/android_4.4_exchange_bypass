.class Lcom/android/mail/browse/ConversationCursor$2;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/ConversationCursor;->resetNotificationActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationCursor;)V
    .locals 0
    .parameter

    .prologue
    .line 2256
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$2;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2259
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$2;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor;->access$2600(Lcom/android/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 2261
    .local v0, changed:Z
    :goto_0
    #v0=(Boolean);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$2;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor;->access$2600(Lcom/android/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    #v1=(Conflicted);v2=(Reference);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/providers/Conversation;

    .line 2262
    .local v1, conversation:Lcom/android/mail/providers/Conversation;
    sget-object v3, Lcom/android/mail/browse/ConversationCursor;->sProvider:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v3=(Reference);
    iget-object v4, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/browse/ConversationCursor$2;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->undeleteLocal(Landroid/net/Uri;Lcom/android/mail/browse/ConversationCursor;)V

    goto :goto_1

    .line 2259
    .end local v0           #changed:Z
    .end local v1           #conversation:Lcom/android/mail/providers/Conversation;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Uninit);v5=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0

    .line 2265
    .restart local v0       #changed:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v4=(Conflicted);v5=(Conflicted);
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$2;->this$0:Lcom/android/mail/browse/ConversationCursor;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor;->access$2600(Lcom/android/mail/browse/ConversationCursor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 2267
    if-eqz v0, :cond_2

    .line 2268
    iget-object v3, p0, Lcom/android/mail/browse/ConversationCursor$2;->this$0:Lcom/android/mail/browse/ConversationCursor;

    invoke-static {v3}, Lcom/android/mail/browse/ConversationCursor;->access$2000(Lcom/android/mail/browse/ConversationCursor;)V

    .line 2270
    :cond_2
    return-void
.end method
