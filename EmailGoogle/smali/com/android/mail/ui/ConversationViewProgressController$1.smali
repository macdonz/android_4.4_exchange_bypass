.class Lcom/android/mail/ui/ConversationViewProgressController$1;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewProgressController;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewProgressController;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewProgressController;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewProgressController$1;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$1;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    #v0=(Reference);
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v0, v1, v2}, Lcom/android/mail/ui/ConversationViewProgressController;->access$002(Lcom/android/mail/ui/ConversationViewProgressController;J)J

    .line 59
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$1;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewProgressController;->access$100(Lcom/android/mail/ui/ConversationViewProgressController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method
