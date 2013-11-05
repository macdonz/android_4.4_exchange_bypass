.class Lcom/android/mail/ui/AbstractConversationViewFragment$3;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "AbstractConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractConversationViewFragment;->onConversationTransformed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$3;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/mail/ui/AbstractConversationViewFragment$3;->this$0:Lcom/android/mail/ui/AbstractConversationViewFragment;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractConversationViewFragment;->mActivity:Lcom/android/mail/ui/ControllableActivity;

    invoke-interface {v0}, Lcom/android/mail/ui/ControllableActivity;->invalidateOptionsMenu()V

    .line 614
    return-void
.end method
