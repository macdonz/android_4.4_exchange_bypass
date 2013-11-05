.class Lcom/android/mail/ui/ConversationListFragment$3;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListFragment$3;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment$3;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationListFragment;->access$300(Lcom/android/mail/ui/ConversationListFragment;)Lcom/android/mail/ui/SwipeableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/ui/SwipeableListView;->invalidateViews()V

    .line 390
    iget-object v0, p0, Lcom/android/mail/ui/ConversationListFragment$3;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationListFragment;->access$600(Lcom/android/mail/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationListFragment$3;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/ConversationListFragment;->access$400(Lcom/android/mail/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/android/mail/ui/ConversationListFragment;->access$500()I

    move-result v2

    #v2=(Integer);
    int-to-long v2, v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    return-void
.end method
