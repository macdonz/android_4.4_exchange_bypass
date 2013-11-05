.class Lcom/android/mail/ui/AbstractActivityController$5;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/android/mail/ui/AbstractActivityController$LoadFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->markConversationMessagesUnread(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;

.field final synthetic val$conv:Lcom/android/mail/providers/Conversation;

.field final synthetic val$originalConversationInfo:[B

.field final synthetic val$unreadMessageUris:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1602
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$5;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/android/mail/ui/AbstractActivityController$5;->val$conv:Lcom/android/mail/providers/Conversation;

    iput-object p3, p0, Lcom/android/mail/ui/AbstractActivityController$5;->val$unreadMessageUris:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/mail/ui/AbstractActivityController$5;->val$originalConversationInfo:[B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 4

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$5;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$5;->val$conv:Lcom/android/mail/providers/Conversation;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$5;->val$unreadMessageUris:Ljava/util/Set;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractActivityController$5;->val$originalConversationInfo:[B

    #v3=(Reference);
    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/ui/AbstractActivityController;->access$300(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V

    .line 1607
    return-void
.end method
