.class Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;
.super Ljava/lang/Object;
.source "ConversationCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->apply(Ljava/util/Collection;Lcom/android/mail/browse/ConversationCursor;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$opList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/ConversationCursor$ConversationProvider;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;->this$0:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    iput-object p2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;->val$authority:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;->val$opList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1629
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;->this$0:Lcom/android/mail/browse/ConversationCursor$ConversationProvider;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/ConversationCursor$ConversationProvider;->access$2400(Lcom/android/mail/browse/ConversationCursor$ConversationProvider;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;->val$authority:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationCursor$ConversationProvider$1;->val$opList:Ljava/util/ArrayList;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    .line 1631
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0

    .line 1630
    :catch_1
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method
