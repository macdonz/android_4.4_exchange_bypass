.class Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->performAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)V
    .locals 0
    .parameter

    .prologue
    .line 2854
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;

    #v0=(Reference);
    iget-object v6, v0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v6=(Reference);
    new-instance v0, Lcom/android/mail/ui/ToastBarOperation;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->access$500(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->access$600(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->access$700(Lcom/android/mail/ui/AbstractActivityController$ConversationAction;)Z

    move-result v4

    #v4=(Boolean);
    iget-object v5, p0, Lcom/android/mail/ui/AbstractActivityController$ConversationAction$1;->this$1:Lcom/android/mail/ui/AbstractActivityController$ConversationAction;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController$ConversationAction;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v5, v5, Lcom/android/mail/ui/AbstractActivityController;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ToastBarOperation;-><init>(IIIZLcom/android/mail/providers/Folder;)V

    #v0=(Reference);
    invoke-virtual {v6, v0}, Lcom/android/mail/ui/AbstractActivityController;->onUndoAvailable(Lcom/android/mail/ui/ToastBarOperation;)V

    .line 2859
    return-void
.end method
