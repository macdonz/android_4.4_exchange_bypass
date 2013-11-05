.class Lcom/android/mail/ui/AbstractActivityController$12;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->getUndoClickedListener(Lcom/android/mail/ui/AnimatedAdapter;)Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;

.field final synthetic val$listAdapter:Lcom/android/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3878
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$12;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/android/mail/ui/AbstractActivityController$12;->val$listAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$12;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 3886
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$12;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 3887
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$12;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$12;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/ui/AbstractActivityController;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v1}, Lcom/android/mail/ui/ControllableActivity;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/AbstractActivityController$12;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/ui/AbstractActivityController;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->undoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/ConversationCursor;->undo(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3890
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$12;->val$listAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    if-eqz v0, :cond_1

    .line 3891
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$12;->val$listAdapter:Lcom/android/mail/ui/AnimatedAdapter;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/AnimatedAdapter;->setUndo(Z)V

    .line 3894
    :cond_1
    #v1=(Conflicted);
    return-void
.end method
