.class Lcom/android/mail/ui/ConversationViewProgressController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationViewProgressController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewProgressController;->animateDismiss(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewProgressController;

.field final synthetic val$doAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewProgressController;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewProgressController$3;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    iput-object p2, p0, Lcom/android/mail/ui/ConversationViewProgressController$3;->val$doAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$3;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewProgressController;->access$300(Lcom/android/mail/ui/ConversationViewProgressController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    #v1=(PosByte);
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$3;->this$0:Lcom/android/mail/ui/ConversationViewProgressController;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewProgressController;->access$300(Lcom/android/mail/ui/ConversationViewProgressController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$3;->val$doAfter:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewProgressController$3;->val$doAfter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 149
    :cond_0
    return-void
.end method
