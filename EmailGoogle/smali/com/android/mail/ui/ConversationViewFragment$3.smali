.class Lcom/android/mail/ui/ConversationViewFragment$3;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$3;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$3;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->access$300(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 299
    return-void
.end method
