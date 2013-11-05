.class Lcom/android/mail/ui/ConversationViewProgressController$2;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewProgressController;->dismissLoadingStatus(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewProgressController;

.field final synthetic val$doAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewProgressController;Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewProgressController$2;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    iput-object p4, p0, Lcom/android/mail/ui/ConversationViewProgressController$2;->val$doAfter:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$2;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewProgressController$2;->val$doAfter:Ljava/lang/Runnable;

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/mail/ui/ConversationViewProgressController;->access$200(Lcom/android/mail/ui/ConversationViewProgressController;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
