.class Lcom/android/mail/ui/ConversationListFragment$5;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mail/ui/SwipeableListView$ListItemsRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationListFragment;->requestDelete(ILjava/util/Collection;Lcom/android/mail/ui/DestructiveAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationListFragment;

.field final synthetic val$action:Lcom/android/mail/ui/DestructiveAction;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationListFragment;Lcom/android/mail/ui/DestructiveAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListFragment$5;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/android/mail/ui/ConversationListFragment$5;->val$action:Lcom/android/mail/ui/DestructiveAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onListItemsRemoved()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment$5;->val$action:Lcom/android/mail/ui/DestructiveAction;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/DestructiveAction;->performAction()V

    .line 763
    return-void
.end method
